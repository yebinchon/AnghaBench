; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmrecovery.c_dlm_is_dummy_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmrecovery.c_dlm_is_dummy_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32 }
%struct.dlm_migratable_lock = type { i64, i64, i64, i64, i64, i32 }

@LKM_IVMODE = common dso_local global i64 0, align 8
@DLM_BLOCKED_LIST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ctxt*, %struct.dlm_migratable_lock*, i32*)* @dlm_is_dummy_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlm_is_dummy_lock(%struct.dlm_ctxt* %0, %struct.dlm_migratable_lock* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dlm_ctxt*, align 8
  %6 = alloca %struct.dlm_migratable_lock*, align 8
  %7 = alloca i32*, align 8
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %5, align 8
  store %struct.dlm_migratable_lock* %1, %struct.dlm_migratable_lock** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load %struct.dlm_migratable_lock*, %struct.dlm_migratable_lock** %6, align 8
  %9 = getelementptr inbounds %struct.dlm_migratable_lock, %struct.dlm_migratable_lock* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %3
  %13 = load %struct.dlm_migratable_lock*, %struct.dlm_migratable_lock** %6, align 8
  %14 = getelementptr inbounds %struct.dlm_migratable_lock, %struct.dlm_migratable_lock* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @LKM_IVMODE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %36

18:                                               ; preds = %12
  %19 = load %struct.dlm_migratable_lock*, %struct.dlm_migratable_lock** %6, align 8
  %20 = getelementptr inbounds %struct.dlm_migratable_lock, %struct.dlm_migratable_lock* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @LKM_IVMODE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %18
  %25 = load %struct.dlm_migratable_lock*, %struct.dlm_migratable_lock** %6, align 8
  %26 = getelementptr inbounds %struct.dlm_migratable_lock, %struct.dlm_migratable_lock* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @LKM_IVMODE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load %struct.dlm_migratable_lock*, %struct.dlm_migratable_lock** %6, align 8
  %32 = getelementptr inbounds %struct.dlm_migratable_lock, %struct.dlm_migratable_lock* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @DLM_BLOCKED_LIST, align 8
  %35 = icmp eq i64 %33, %34
  br label %36

36:                                               ; preds = %30, %24, %18, %12, %3
  %37 = phi i1 [ false, %24 ], [ false, %18 ], [ false, %12 ], [ false, %3 ], [ %35, %30 ]
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load %struct.dlm_migratable_lock*, %struct.dlm_migratable_lock** %6, align 8
  %43 = getelementptr inbounds %struct.dlm_migratable_lock, %struct.dlm_migratable_lock* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = load i32*, i32** %7, align 8
  store i32 %44, i32* %45, align 4
  store i32 1, i32* %4, align 4
  br label %47

46:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %41
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
