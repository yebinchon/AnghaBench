; ModuleID = '/home/carl/AnghaBench/linux/scripts/genksyms/extr_genksyms.c_copy_list_range.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/genksyms/extr_genksyms.c_copy_list_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { %struct.string_list* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.string_list* @copy_list_range(%struct.string_list* %0, %struct.string_list* %1) #0 {
  %3 = alloca %struct.string_list*, align 8
  %4 = alloca %struct.string_list*, align 8
  %5 = alloca %struct.string_list*, align 8
  %6 = alloca %struct.string_list*, align 8
  %7 = alloca %struct.string_list*, align 8
  store %struct.string_list* %0, %struct.string_list** %4, align 8
  store %struct.string_list* %1, %struct.string_list** %5, align 8
  %8 = load %struct.string_list*, %struct.string_list** %4, align 8
  %9 = load %struct.string_list*, %struct.string_list** %5, align 8
  %10 = icmp eq %struct.string_list* %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store %struct.string_list* null, %struct.string_list** %3, align 8
  br label %40

12:                                               ; preds = %2
  %13 = load %struct.string_list*, %struct.string_list** %4, align 8
  %14 = call i8* @copy_node(%struct.string_list* %13)
  %15 = bitcast i8* %14 to %struct.string_list*
  store %struct.string_list* %15, %struct.string_list** %6, align 8
  store %struct.string_list* %15, %struct.string_list** %7, align 8
  %16 = load %struct.string_list*, %struct.string_list** %4, align 8
  %17 = getelementptr inbounds %struct.string_list, %struct.string_list* %16, i32 0, i32 0
  %18 = load %struct.string_list*, %struct.string_list** %17, align 8
  store %struct.string_list* %18, %struct.string_list** %4, align 8
  br label %19

19:                                               ; preds = %32, %12
  %20 = load %struct.string_list*, %struct.string_list** %4, align 8
  %21 = load %struct.string_list*, %struct.string_list** %5, align 8
  %22 = icmp ne %struct.string_list* %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %19
  %24 = load %struct.string_list*, %struct.string_list** %4, align 8
  %25 = call i8* @copy_node(%struct.string_list* %24)
  %26 = bitcast i8* %25 to %struct.string_list*
  %27 = load %struct.string_list*, %struct.string_list** %7, align 8
  %28 = getelementptr inbounds %struct.string_list, %struct.string_list* %27, i32 0, i32 0
  store %struct.string_list* %26, %struct.string_list** %28, align 8
  %29 = load %struct.string_list*, %struct.string_list** %7, align 8
  %30 = getelementptr inbounds %struct.string_list, %struct.string_list* %29, i32 0, i32 0
  %31 = load %struct.string_list*, %struct.string_list** %30, align 8
  store %struct.string_list* %31, %struct.string_list** %7, align 8
  br label %32

32:                                               ; preds = %23
  %33 = load %struct.string_list*, %struct.string_list** %4, align 8
  %34 = getelementptr inbounds %struct.string_list, %struct.string_list* %33, i32 0, i32 0
  %35 = load %struct.string_list*, %struct.string_list** %34, align 8
  store %struct.string_list* %35, %struct.string_list** %4, align 8
  br label %19

36:                                               ; preds = %19
  %37 = load %struct.string_list*, %struct.string_list** %7, align 8
  %38 = getelementptr inbounds %struct.string_list, %struct.string_list* %37, i32 0, i32 0
  store %struct.string_list* null, %struct.string_list** %38, align 8
  %39 = load %struct.string_list*, %struct.string_list** %6, align 8
  store %struct.string_list* %39, %struct.string_list** %3, align 8
  br label %40

40:                                               ; preds = %36, %11
  %41 = load %struct.string_list*, %struct.string_list** %3, align 8
  ret %struct.string_list* %41
}

declare dso_local i8* @copy_node(%struct.string_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
