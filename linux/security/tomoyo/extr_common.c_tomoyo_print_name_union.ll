; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_common.c_tomoyo_print_name_union.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_common.c_tomoyo_print_name_union.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_io_buffer = type { i32 }
%struct.tomoyo_name_union = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* }

@.str = private unnamed_addr constant [2 x i8] c"@\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tomoyo_io_buffer*, %struct.tomoyo_name_union*)* @tomoyo_print_name_union to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tomoyo_print_name_union(%struct.tomoyo_io_buffer* %0, %struct.tomoyo_name_union* %1) #0 {
  %3 = alloca %struct.tomoyo_io_buffer*, align 8
  %4 = alloca %struct.tomoyo_name_union*, align 8
  store %struct.tomoyo_io_buffer* %0, %struct.tomoyo_io_buffer** %3, align 8
  store %struct.tomoyo_name_union* %1, %struct.tomoyo_name_union** %4, align 8
  %5 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %3, align 8
  %6 = call i32 @tomoyo_set_space(%struct.tomoyo_io_buffer* %5)
  %7 = load %struct.tomoyo_name_union*, %struct.tomoyo_name_union** %4, align 8
  %8 = getelementptr inbounds %struct.tomoyo_name_union, %struct.tomoyo_name_union* %7, i32 0, i32 1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = icmp ne %struct.TYPE_5__* %9, null
  br i1 %10, label %11, label %23

11:                                               ; preds = %2
  %12 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %3, align 8
  %13 = call i32 @tomoyo_set_string(%struct.tomoyo_io_buffer* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %3, align 8
  %15 = load %struct.tomoyo_name_union*, %struct.tomoyo_name_union** %4, align 8
  %16 = getelementptr inbounds %struct.tomoyo_name_union, %struct.tomoyo_name_union* %15, i32 0, i32 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @tomoyo_set_string(%struct.tomoyo_io_buffer* %14, i8* %21)
  br label %31

23:                                               ; preds = %2
  %24 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %3, align 8
  %25 = load %struct.tomoyo_name_union*, %struct.tomoyo_name_union** %4, align 8
  %26 = getelementptr inbounds %struct.tomoyo_name_union, %struct.tomoyo_name_union* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @tomoyo_set_string(%struct.tomoyo_io_buffer* %24, i8* %29)
  br label %31

31:                                               ; preds = %23, %11
  ret void
}

declare dso_local i32 @tomoyo_set_space(%struct.tomoyo_io_buffer*) #1

declare dso_local i32 @tomoyo_set_string(%struct.tomoyo_io_buffer*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
