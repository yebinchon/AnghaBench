; ModuleID = '/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_main.c_ima_file_free.c'
source_filename = "/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_main.c_ima_file_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.inode = type { i32 }
%struct.integrity_iint_cache = type { i32 }

@ima_policy_flag = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ima_file_free(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.integrity_iint_cache*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %5 = load %struct.file*, %struct.file** %2, align 8
  %6 = call %struct.inode* @file_inode(%struct.file* %5)
  store %struct.inode* %6, %struct.inode** %3, align 8
  %7 = load i32, i32* @ima_policy_flag, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @S_ISREG(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %9, %1
  br label %27

16:                                               ; preds = %9
  %17 = load %struct.inode*, %struct.inode** %3, align 8
  %18 = call %struct.integrity_iint_cache* @integrity_iint_find(%struct.inode* %17)
  store %struct.integrity_iint_cache* %18, %struct.integrity_iint_cache** %4, align 8
  %19 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %4, align 8
  %20 = icmp ne %struct.integrity_iint_cache* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  br label %27

22:                                               ; preds = %16
  %23 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %4, align 8
  %24 = load %struct.inode*, %struct.inode** %3, align 8
  %25 = load %struct.file*, %struct.file** %2, align 8
  %26 = call i32 @ima_check_last_writer(%struct.integrity_iint_cache* %23, %struct.inode* %24, %struct.file* %25)
  br label %27

27:                                               ; preds = %22, %21, %15
  ret void
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local %struct.integrity_iint_cache* @integrity_iint_find(%struct.inode*) #1

declare dso_local i32 @ima_check_last_writer(%struct.integrity_iint_cache*, %struct.inode*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
