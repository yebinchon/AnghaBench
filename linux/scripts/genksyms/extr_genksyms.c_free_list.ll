; ModuleID = '/home/carl/AnghaBench/linux/scripts/genksyms/extr_genksyms.c_free_list.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/genksyms/extr_genksyms.c_free_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { %struct.string_list* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_list(%struct.string_list* %0, %struct.string_list* %1) #0 {
  %3 = alloca %struct.string_list*, align 8
  %4 = alloca %struct.string_list*, align 8
  %5 = alloca %struct.string_list*, align 8
  store %struct.string_list* %0, %struct.string_list** %3, align 8
  store %struct.string_list* %1, %struct.string_list** %4, align 8
  br label %6

6:                                                ; preds = %10, %2
  %7 = load %struct.string_list*, %struct.string_list** %3, align 8
  %8 = load %struct.string_list*, %struct.string_list** %4, align 8
  %9 = icmp ne %struct.string_list* %7, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %6
  %11 = load %struct.string_list*, %struct.string_list** %3, align 8
  %12 = getelementptr inbounds %struct.string_list, %struct.string_list* %11, i32 0, i32 0
  %13 = load %struct.string_list*, %struct.string_list** %12, align 8
  store %struct.string_list* %13, %struct.string_list** %5, align 8
  %14 = load %struct.string_list*, %struct.string_list** %3, align 8
  %15 = call i32 @free_node(%struct.string_list* %14)
  %16 = load %struct.string_list*, %struct.string_list** %5, align 8
  store %struct.string_list* %16, %struct.string_list** %3, align 8
  br label %6

17:                                               ; preds = %6
  ret void
}

declare dso_local i32 @free_node(%struct.string_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
