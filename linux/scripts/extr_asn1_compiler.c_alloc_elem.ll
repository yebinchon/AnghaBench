; ModuleID = '/home/carl/AnghaBench/linux/scripts/extr_asn1_compiler.c_alloc_elem.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/extr_asn1_compiler.c_alloc_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.element = type { %struct.element* }
%struct.token = type { i32 }

@element_list = common dso_local global %struct.element* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.element* (%struct.token*)* @alloc_elem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.element* @alloc_elem(%struct.token* %0) #0 {
  %2 = alloca %struct.token*, align 8
  %3 = alloca %struct.element*, align 8
  store %struct.token* %0, %struct.token** %2, align 8
  %4 = call %struct.element* @calloc(i32 1, i32 8)
  store %struct.element* %4, %struct.element** %3, align 8
  %5 = load %struct.element*, %struct.element** %3, align 8
  %6 = icmp ne %struct.element* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = call i32 @perror(i32* null)
  %9 = call i32 @exit(i32 1) #3
  unreachable

10:                                               ; preds = %1
  %11 = load %struct.element*, %struct.element** @element_list, align 8
  %12 = load %struct.element*, %struct.element** %3, align 8
  %13 = getelementptr inbounds %struct.element, %struct.element* %12, i32 0, i32 0
  store %struct.element* %11, %struct.element** %13, align 8
  %14 = load %struct.element*, %struct.element** %3, align 8
  store %struct.element* %14, %struct.element** @element_list, align 8
  %15 = load %struct.element*, %struct.element** %3, align 8
  ret %struct.element* %15
}

declare dso_local %struct.element* @calloc(i32, i32) #1

declare dso_local i32 @perror(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
