; ModuleID = '/home/carl/AnghaBench/linux/scripts/genksyms/extr_genksyms.c_copy_node.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/genksyms/extr_genksyms.c_copy_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.string_list* @copy_node(%struct.string_list* %0) #0 {
  %2 = alloca %struct.string_list*, align 8
  %3 = alloca %struct.string_list*, align 8
  store %struct.string_list* %0, %struct.string_list** %2, align 8
  %4 = call %struct.string_list* @xmalloc(i32 8)
  store %struct.string_list* %4, %struct.string_list** %3, align 8
  %5 = load %struct.string_list*, %struct.string_list** %2, align 8
  %6 = getelementptr inbounds %struct.string_list, %struct.string_list* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @xstrdup(i32 %7)
  %9 = load %struct.string_list*, %struct.string_list** %3, align 8
  %10 = getelementptr inbounds %struct.string_list, %struct.string_list* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  %11 = load %struct.string_list*, %struct.string_list** %2, align 8
  %12 = getelementptr inbounds %struct.string_list, %struct.string_list* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.string_list*, %struct.string_list** %3, align 8
  %15 = getelementptr inbounds %struct.string_list, %struct.string_list* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.string_list*, %struct.string_list** %3, align 8
  ret %struct.string_list* %16
}

declare dso_local %struct.string_list* @xmalloc(i32) #1

declare dso_local i32 @xstrdup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
