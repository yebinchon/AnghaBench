; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_svcsubs.c_nlm_release_file.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_svcsubs.c_nlm_release_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_file = type { i64 }

@.str = private unnamed_addr constant [38 x i8] c"lockd: nlm_release_file(%p, ct = %d)\0A\00", align 1
@nlm_file_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nlm_release_file(%struct.nlm_file* %0) #0 {
  %2 = alloca %struct.nlm_file*, align 8
  store %struct.nlm_file* %0, %struct.nlm_file** %2, align 8
  %3 = load %struct.nlm_file*, %struct.nlm_file** %2, align 8
  %4 = load %struct.nlm_file*, %struct.nlm_file** %2, align 8
  %5 = getelementptr inbounds %struct.nlm_file, %struct.nlm_file* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = call i32 @dprintk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), %struct.nlm_file* %3, i64 %6)
  %8 = call i32 @mutex_lock(i32* @nlm_file_mutex)
  %9 = load %struct.nlm_file*, %struct.nlm_file** %2, align 8
  %10 = getelementptr inbounds %struct.nlm_file, %struct.nlm_file* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, -1
  store i64 %12, i64* %10, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.nlm_file*, %struct.nlm_file** %2, align 8
  %16 = call i32 @nlm_file_inuse(%struct.nlm_file* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = load %struct.nlm_file*, %struct.nlm_file** %2, align 8
  %20 = call i32 @nlm_delete_file(%struct.nlm_file* %19)
  br label %21

21:                                               ; preds = %18, %14, %1
  %22 = call i32 @mutex_unlock(i32* @nlm_file_mutex)
  ret void
}

declare dso_local i32 @dprintk(i8*, %struct.nlm_file*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @nlm_file_inuse(%struct.nlm_file*) #1

declare dso_local i32 @nlm_delete_file(%struct.nlm_file*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
