; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_fs_context.c_put_fc_log.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_fs_context.c_put_fc_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_context = type { %struct.fc_log* }
%struct.fc_log = type { i32, %struct.fc_log**, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fs_context*)* @put_fc_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_fc_log(%struct.fs_context* %0) #0 {
  %2 = alloca %struct.fs_context*, align 8
  %3 = alloca %struct.fc_log*, align 8
  %4 = alloca i32, align 4
  store %struct.fs_context* %0, %struct.fs_context** %2, align 8
  %5 = load %struct.fs_context*, %struct.fs_context** %2, align 8
  %6 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %5, i32 0, i32 0
  %7 = load %struct.fc_log*, %struct.fc_log** %6, align 8
  store %struct.fc_log* %7, %struct.fc_log** %3, align 8
  %8 = load %struct.fc_log*, %struct.fc_log** %3, align 8
  %9 = icmp ne %struct.fc_log* %8, null
  br i1 %9, label %10, label %46

10:                                               ; preds = %1
  %11 = load %struct.fc_log*, %struct.fc_log** %3, align 8
  %12 = getelementptr inbounds %struct.fc_log, %struct.fc_log* %11, i32 0, i32 2
  %13 = call i64 @refcount_dec_and_test(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %45

15:                                               ; preds = %10
  %16 = load %struct.fs_context*, %struct.fs_context** %2, align 8
  %17 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %16, i32 0, i32 0
  store %struct.fc_log* null, %struct.fc_log** %17, align 8
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %39, %15
  %19 = load i32, i32* %4, align 4
  %20 = icmp sle i32 %19, 7
  br i1 %20, label %21, label %42

21:                                               ; preds = %18
  %22 = load %struct.fc_log*, %struct.fc_log** %3, align 8
  %23 = getelementptr inbounds %struct.fc_log, %struct.fc_log* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = shl i32 1, %25
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %21
  %30 = load %struct.fc_log*, %struct.fc_log** %3, align 8
  %31 = getelementptr inbounds %struct.fc_log, %struct.fc_log* %30, i32 0, i32 1
  %32 = load %struct.fc_log**, %struct.fc_log*** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.fc_log*, %struct.fc_log** %32, i64 %34
  %36 = load %struct.fc_log*, %struct.fc_log** %35, align 8
  %37 = call i32 @kfree(%struct.fc_log* %36)
  br label %38

38:                                               ; preds = %29, %21
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %18

42:                                               ; preds = %18
  %43 = load %struct.fc_log*, %struct.fc_log** %3, align 8
  %44 = call i32 @kfree(%struct.fc_log* %43)
  br label %45

45:                                               ; preds = %42, %10
  br label %46

46:                                               ; preds = %45, %1
  ret void
}

declare dso_local i64 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @kfree(%struct.fc_log*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
