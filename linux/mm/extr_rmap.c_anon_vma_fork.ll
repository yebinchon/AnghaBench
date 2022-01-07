; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_rmap.c_anon_vma_fork.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_rmap.c_anon_vma_fork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { %struct.anon_vma* }
%struct.anon_vma = type { i32, %struct.anon_vma*, i32 }
%struct.anon_vma_chain = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @anon_vma_fork(%struct.vm_area_struct* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.anon_vma_chain*, align 8
  %7 = alloca %struct.anon_vma*, align 8
  %8 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %9 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %10 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %9, i32 0, i32 0
  %11 = load %struct.anon_vma*, %struct.anon_vma** %10, align 8
  %12 = icmp ne %struct.anon_vma* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %83

14:                                               ; preds = %2
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %16 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %15, i32 0, i32 0
  store %struct.anon_vma* null, %struct.anon_vma** %16, align 8
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %19 = call i32 @anon_vma_clone(%struct.vm_area_struct* %17, %struct.vm_area_struct* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %3, align 4
  br label %83

24:                                               ; preds = %14
  %25 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %26 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %25, i32 0, i32 0
  %27 = load %struct.anon_vma*, %struct.anon_vma** %26, align 8
  %28 = icmp ne %struct.anon_vma* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %83

30:                                               ; preds = %24
  %31 = call %struct.anon_vma* (...) @anon_vma_alloc()
  store %struct.anon_vma* %31, %struct.anon_vma** %7, align 8
  %32 = load %struct.anon_vma*, %struct.anon_vma** %7, align 8
  %33 = icmp ne %struct.anon_vma* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  br label %78

35:                                               ; preds = %30
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.anon_vma_chain* @anon_vma_chain_alloc(i32 %36)
  store %struct.anon_vma_chain* %37, %struct.anon_vma_chain** %6, align 8
  %38 = load %struct.anon_vma_chain*, %struct.anon_vma_chain** %6, align 8
  %39 = icmp ne %struct.anon_vma_chain* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  br label %75

41:                                               ; preds = %35
  %42 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %43 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %42, i32 0, i32 0
  %44 = load %struct.anon_vma*, %struct.anon_vma** %43, align 8
  %45 = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.anon_vma*, %struct.anon_vma** %7, align 8
  %48 = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %50 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %49, i32 0, i32 0
  %51 = load %struct.anon_vma*, %struct.anon_vma** %50, align 8
  %52 = load %struct.anon_vma*, %struct.anon_vma** %7, align 8
  %53 = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %52, i32 0, i32 1
  store %struct.anon_vma* %51, %struct.anon_vma** %53, align 8
  %54 = load %struct.anon_vma*, %struct.anon_vma** %7, align 8
  %55 = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @get_anon_vma(i32 %56)
  %58 = load %struct.anon_vma*, %struct.anon_vma** %7, align 8
  %59 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %60 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %59, i32 0, i32 0
  store %struct.anon_vma* %58, %struct.anon_vma** %60, align 8
  %61 = load %struct.anon_vma*, %struct.anon_vma** %7, align 8
  %62 = call i32 @anon_vma_lock_write(%struct.anon_vma* %61)
  %63 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %64 = load %struct.anon_vma_chain*, %struct.anon_vma_chain** %6, align 8
  %65 = load %struct.anon_vma*, %struct.anon_vma** %7, align 8
  %66 = call i32 @anon_vma_chain_link(%struct.vm_area_struct* %63, %struct.anon_vma_chain* %64, %struct.anon_vma* %65)
  %67 = load %struct.anon_vma*, %struct.anon_vma** %7, align 8
  %68 = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %67, i32 0, i32 1
  %69 = load %struct.anon_vma*, %struct.anon_vma** %68, align 8
  %70 = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 8
  %73 = load %struct.anon_vma*, %struct.anon_vma** %7, align 8
  %74 = call i32 @anon_vma_unlock_write(%struct.anon_vma* %73)
  store i32 0, i32* %3, align 4
  br label %83

75:                                               ; preds = %40
  %76 = load %struct.anon_vma*, %struct.anon_vma** %7, align 8
  %77 = call i32 @put_anon_vma(%struct.anon_vma* %76)
  br label %78

78:                                               ; preds = %75, %34
  %79 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %80 = call i32 @unlink_anon_vmas(%struct.vm_area_struct* %79)
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %78, %41, %29, %22, %13
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @anon_vma_clone(%struct.vm_area_struct*, %struct.vm_area_struct*) #1

declare dso_local %struct.anon_vma* @anon_vma_alloc(...) #1

declare dso_local %struct.anon_vma_chain* @anon_vma_chain_alloc(i32) #1

declare dso_local i32 @get_anon_vma(i32) #1

declare dso_local i32 @anon_vma_lock_write(%struct.anon_vma*) #1

declare dso_local i32 @anon_vma_chain_link(%struct.vm_area_struct*, %struct.anon_vma_chain*, %struct.anon_vma*) #1

declare dso_local i32 @anon_vma_unlock_write(%struct.anon_vma*) #1

declare dso_local i32 @put_anon_vma(%struct.anon_vma*) #1

declare dso_local i32 @unlink_anon_vmas(%struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
