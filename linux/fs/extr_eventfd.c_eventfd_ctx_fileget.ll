; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_eventfd.c_eventfd_ctx_fileget.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_eventfd.c_eventfd_ctx_fileget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eventfd_ctx = type { i32 }
%struct.file = type { %struct.eventfd_ctx*, i32* }

@eventfd_fops = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.eventfd_ctx* @eventfd_ctx_fileget(%struct.file* %0) #0 {
  %2 = alloca %struct.eventfd_ctx*, align 8
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.eventfd_ctx*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  %5 = load %struct.file*, %struct.file** %3, align 8
  %6 = getelementptr inbounds %struct.file, %struct.file* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, @eventfd_fops
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.eventfd_ctx* @ERR_PTR(i32 %11)
  store %struct.eventfd_ctx* %12, %struct.eventfd_ctx** %2, align 8
  br label %21

13:                                               ; preds = %1
  %14 = load %struct.file*, %struct.file** %3, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 0
  %16 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %15, align 8
  store %struct.eventfd_ctx* %16, %struct.eventfd_ctx** %4, align 8
  %17 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %4, align 8
  %18 = getelementptr inbounds %struct.eventfd_ctx, %struct.eventfd_ctx* %17, i32 0, i32 0
  %19 = call i32 @kref_get(i32* %18)
  %20 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %4, align 8
  store %struct.eventfd_ctx* %20, %struct.eventfd_ctx** %2, align 8
  br label %21

21:                                               ; preds = %13, %9
  %22 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %2, align 8
  ret %struct.eventfd_ctx* %22
}

declare dso_local %struct.eventfd_ctx* @ERR_PTR(i32) #1

declare dso_local i32 @kref_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
