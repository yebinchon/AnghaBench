; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_fs_context.c_legacy_init_fs_context.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_fs_context.c_legacy_init_fs_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_context = type { i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@legacy_fs_context_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fs_context*)* @legacy_init_fs_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @legacy_init_fs_context(%struct.fs_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fs_context*, align 8
  store %struct.fs_context* %0, %struct.fs_context** %3, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call i32 @kzalloc(i32 4, i32 %4)
  %6 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %7 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %6, i32 0, i32 1
  store i32 %5, i32* %7, align 8
  %8 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %9 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %18

15:                                               ; preds = %1
  %16 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %17 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %16, i32 0, i32 0
  store i32* @legacy_fs_context_ops, i32** %17, align 8
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %15, %12
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i32 @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
