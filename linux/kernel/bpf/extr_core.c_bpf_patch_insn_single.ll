; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_core.c_bpf_patch_insn_single.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_core.c_bpf_patch_insn_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog = type { i32, i32 }
%struct.bpf_insn = type { i32 }

@S16_MAX = common dso_local global i32 0, align 4
@GFP_USER = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bpf_prog* @bpf_patch_insn_single(%struct.bpf_prog* %0, i32 %1, %struct.bpf_insn* %2, i32 %3) #0 {
  %5 = alloca %struct.bpf_prog*, align 8
  %6 = alloca %struct.bpf_prog*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bpf_insn*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.bpf_prog*, align 8
  %15 = alloca i32, align 4
  store %struct.bpf_prog* %0, %struct.bpf_prog** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.bpf_insn* %2, %struct.bpf_insn** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* @S16_MAX, align 4
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %4
  %22 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %23 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %24, %25
  %27 = load %struct.bpf_insn*, %struct.bpf_insn** %8, align 8
  %28 = call i32 @memcpy(i32 %26, %struct.bpf_insn* %27, i32 4)
  %29 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  store %struct.bpf_prog* %29, %struct.bpf_prog** %5, align 8
  br label %116

30:                                               ; preds = %4
  %31 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %32 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %12, align 4
  %35 = add nsw i32 %33, %34
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %30
  %40 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %44, %45
  %47 = call i32 @bpf_adj_branches(%struct.bpf_prog* %40, i32 %41, i32 %43, i32 %46, i32 1)
  store i32 %47, i32* %15, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %39
  %50 = load i32, i32* %15, align 4
  %51 = call %struct.bpf_prog* @ERR_PTR(i32 %50)
  store %struct.bpf_prog* %51, %struct.bpf_prog** %5, align 8
  br label %116

52:                                               ; preds = %39, %30
  %53 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @bpf_prog_size(i32 %54)
  %56 = load i32, i32* @GFP_USER, align 4
  %57 = call %struct.bpf_prog* @bpf_prog_realloc(%struct.bpf_prog* %53, i32 %55, i32 %56)
  store %struct.bpf_prog* %57, %struct.bpf_prog** %14, align 8
  %58 = load %struct.bpf_prog*, %struct.bpf_prog** %14, align 8
  %59 = icmp ne %struct.bpf_prog* %58, null
  br i1 %59, label %64, label %60

60:                                               ; preds = %52
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  %63 = call %struct.bpf_prog* @ERR_PTR(i32 %62)
  store %struct.bpf_prog* %63, %struct.bpf_prog** %5, align 8
  br label %116

64:                                               ; preds = %52
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.bpf_prog*, %struct.bpf_prog** %14, align 8
  %67 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %7, align 4
  %70 = sub nsw i32 %68, %69
  %71 = load i32, i32* %9, align 4
  %72 = sub nsw i32 %70, %71
  store i32 %72, i32* %11, align 4
  %73 = load %struct.bpf_prog*, %struct.bpf_prog** %14, align 8
  %74 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %75, %76
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %77, %78
  %80 = load %struct.bpf_prog*, %struct.bpf_prog** %14, align 8
  %81 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %82, %83
  %85 = add nsw i32 %84, 1
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = mul i64 4, %87
  %89 = trunc i64 %88 to i32
  %90 = call i32 @memmove(i32 %79, i32 %85, i32 %89)
  %91 = load %struct.bpf_prog*, %struct.bpf_prog** %14, align 8
  %92 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %93, %94
  %96 = load %struct.bpf_insn*, %struct.bpf_insn** %8, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = mul i64 4, %98
  %100 = trunc i64 %99 to i32
  %101 = call i32 @memcpy(i32 %95, %struct.bpf_insn* %96, i32 %100)
  %102 = load %struct.bpf_prog*, %struct.bpf_prog** %14, align 8
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %104, 1
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* %9, align 4
  %108 = add nsw i32 %106, %107
  %109 = call i32 @bpf_adj_branches(%struct.bpf_prog* %102, i32 %103, i32 %105, i32 %108, i32 0)
  %110 = call i32 @BUG_ON(i32 %109)
  %111 = load %struct.bpf_prog*, %struct.bpf_prog** %14, align 8
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* %12, align 4
  %114 = call i32 @bpf_adj_linfo(%struct.bpf_prog* %111, i32 %112, i32 %113)
  %115 = load %struct.bpf_prog*, %struct.bpf_prog** %14, align 8
  store %struct.bpf_prog* %115, %struct.bpf_prog** %5, align 8
  br label %116

116:                                              ; preds = %64, %60, %49, %21
  %117 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  ret %struct.bpf_prog* %117
}

declare dso_local i32 @memcpy(i32, %struct.bpf_insn*, i32) #1

declare dso_local i32 @bpf_adj_branches(%struct.bpf_prog*, i32, i32, i32, i32) #1

declare dso_local %struct.bpf_prog* @ERR_PTR(i32) #1

declare dso_local %struct.bpf_prog* @bpf_prog_realloc(%struct.bpf_prog*, i32, i32) #1

declare dso_local i32 @bpf_prog_size(i32) #1

declare dso_local i32 @memmove(i32, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @bpf_adj_linfo(%struct.bpf_prog*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
