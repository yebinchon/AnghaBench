; ModuleID = '/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_appraise.c_ima_reset_appraise_flags.c'
source_filename = "/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_appraise.c_ima_reset_appraise_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.integrity_iint_cache = type { i32, i64 }

@ima_policy_flag = common dso_local global i32 0, align 4
@IMA_APPRAISE = common dso_local global i32 0, align 4
@IMA_CHANGE_XATTR = common dso_local global i32 0, align 4
@IMA_DIGSIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, i32)* @ima_reset_appraise_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ima_reset_appraise_flags(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.integrity_iint_cache*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @ima_policy_flag, align 4
  %7 = load i32, i32* @IMA_APPRAISE, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.inode*, %struct.inode** %3, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @S_ISREG(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %10, %2
  br label %42

17:                                               ; preds = %10
  %18 = load %struct.inode*, %struct.inode** %3, align 8
  %19 = call %struct.integrity_iint_cache* @integrity_iint_find(%struct.inode* %18)
  store %struct.integrity_iint_cache* %19, %struct.integrity_iint_cache** %5, align 8
  %20 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %5, align 8
  %21 = icmp ne %struct.integrity_iint_cache* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  br label %42

23:                                               ; preds = %17
  %24 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %5, align 8
  %25 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* @IMA_CHANGE_XATTR, align 4
  %27 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %5, align 8
  %28 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %27, i32 0, i32 0
  %29 = call i32 @set_bit(i32 %26, i32* %28)
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %23
  %33 = load i32, i32* @IMA_DIGSIG, align 4
  %34 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %5, align 8
  %35 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %34, i32 0, i32 0
  %36 = call i32 @set_bit(i32 %33, i32* %35)
  br label %42

37:                                               ; preds = %23
  %38 = load i32, i32* @IMA_DIGSIG, align 4
  %39 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %5, align 8
  %40 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %39, i32 0, i32 0
  %41 = call i32 @clear_bit(i32 %38, i32* %40)
  br label %42

42:                                               ; preds = %16, %22, %37, %32
  ret void
}

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local %struct.integrity_iint_cache* @integrity_iint_find(%struct.inode*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
