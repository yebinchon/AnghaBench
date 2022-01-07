; ModuleID = '/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_main.c_ima_post_path_mknod.c'
source_filename = "/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_main.c_ima_post_path_mknod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.integrity_iint_cache = type { i32 }

@MAY_ACCESS = common dso_local global i32 0, align 4
@FILE_CHECK = common dso_local global i32 0, align 4
@IMA_NEW_FILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ima_post_path_mknod(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.integrity_iint_cache*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %2, align 8
  %6 = load %struct.dentry*, %struct.dentry** %2, align 8
  %7 = getelementptr inbounds %struct.dentry, %struct.dentry* %6, i32 0, i32 0
  %8 = load %struct.inode*, %struct.inode** %7, align 8
  store %struct.inode* %8, %struct.inode** %4, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = load i32, i32* @MAY_ACCESS, align 4
  %11 = load i32, i32* @FILE_CHECK, align 4
  %12 = call i32 @ima_must_appraise(%struct.inode* %9, i32 %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %28

16:                                               ; preds = %1
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = call %struct.integrity_iint_cache* @integrity_inode_get(%struct.inode* %17)
  store %struct.integrity_iint_cache* %18, %struct.integrity_iint_cache** %3, align 8
  %19 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %3, align 8
  %20 = icmp ne %struct.integrity_iint_cache* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  br label %28

22:                                               ; preds = %16
  %23 = load i32, i32* @IMA_NEW_FILE, align 4
  %24 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %3, align 8
  %25 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %22, %21, %15
  ret void
}

declare dso_local i32 @ima_must_appraise(%struct.inode*, i32, i32) #1

declare dso_local %struct.integrity_iint_cache* @integrity_inode_get(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
