; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_vmalloc.c_free_vm_area.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_vmalloc.c_free_vm_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_struct = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_vm_area(%struct.vm_struct* %0) #0 {
  %2 = alloca %struct.vm_struct*, align 8
  %3 = alloca %struct.vm_struct*, align 8
  store %struct.vm_struct* %0, %struct.vm_struct** %2, align 8
  %4 = load %struct.vm_struct*, %struct.vm_struct** %2, align 8
  %5 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.vm_struct* @remove_vm_area(i32 %6)
  store %struct.vm_struct* %7, %struct.vm_struct** %3, align 8
  %8 = load %struct.vm_struct*, %struct.vm_struct** %3, align 8
  %9 = load %struct.vm_struct*, %struct.vm_struct** %2, align 8
  %10 = icmp ne %struct.vm_struct* %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.vm_struct*, %struct.vm_struct** %2, align 8
  %14 = call i32 @kfree(%struct.vm_struct* %13)
  ret void
}

declare dso_local %struct.vm_struct* @remove_vm_area(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @kfree(%struct.vm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
