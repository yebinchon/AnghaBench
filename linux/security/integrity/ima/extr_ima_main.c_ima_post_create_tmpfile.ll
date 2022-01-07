; ModuleID = '/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_main.c_ima_post_create_tmpfile.c'
source_filename = "/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_main.c_ima_post_create_tmpfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.integrity_iint_cache = type { i32, i32 }

@MAY_ACCESS = common dso_local global i32 0, align 4
@FILE_CHECK = common dso_local global i32 0, align 4
@IMA_UPDATE_XATTR = common dso_local global i32 0, align 4
@INTEGRITY_PASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ima_post_create_tmpfile(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.integrity_iint_cache*, align 8
  %4 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %2, align 8
  %5 = load %struct.inode*, %struct.inode** %2, align 8
  %6 = load i32, i32* @MAY_ACCESS, align 4
  %7 = load i32, i32* @FILE_CHECK, align 4
  %8 = call i32 @ima_must_appraise(%struct.inode* %5, i32 %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %26

12:                                               ; preds = %1
  %13 = load %struct.inode*, %struct.inode** %2, align 8
  %14 = call %struct.integrity_iint_cache* @integrity_inode_get(%struct.inode* %13)
  store %struct.integrity_iint_cache* %14, %struct.integrity_iint_cache** %3, align 8
  %15 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %3, align 8
  %16 = icmp ne %struct.integrity_iint_cache* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  br label %26

18:                                               ; preds = %12
  %19 = load i32, i32* @IMA_UPDATE_XATTR, align 4
  %20 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %3, align 8
  %21 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %20, i32 0, i32 1
  %22 = call i32 @set_bit(i32 %19, i32* %21)
  %23 = load i32, i32* @INTEGRITY_PASS, align 4
  %24 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %3, align 8
  %25 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  br label %26

26:                                               ; preds = %18, %17, %11
  ret void
}

declare dso_local i32 @ima_must_appraise(%struct.inode*, i32, i32) #1

declare dso_local %struct.integrity_iint_cache* @integrity_inode_get(%struct.inode*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
