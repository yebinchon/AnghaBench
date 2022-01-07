; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf_dump.c_btf_dump_push_decl_stack_id.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf_dump.c_btf_dump_push_decl_stack_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_dump = type { i32, i32, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btf_dump*, i32)* @btf_dump_push_decl_stack_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btf_dump_push_decl_stack_id(%struct.btf_dump* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btf_dump*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.btf_dump* %0, %struct.btf_dump** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.btf_dump*, %struct.btf_dump** %4, align 8
  %9 = getelementptr inbounds %struct.btf_dump, %struct.btf_dump* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.btf_dump*, %struct.btf_dump** %4, align 8
  %12 = getelementptr inbounds %struct.btf_dump, %struct.btf_dump* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp sge i32 %10, %13
  br i1 %14, label %15, label %41

15:                                               ; preds = %2
  %16 = load %struct.btf_dump*, %struct.btf_dump** %4, align 8
  %17 = getelementptr inbounds %struct.btf_dump, %struct.btf_dump* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 %18, 3
  %20 = sdiv i32 %19, 2
  %21 = call i64 @max(i32 16, i32 %20)
  store i64 %21, i64* %7, align 8
  %22 = load %struct.btf_dump*, %struct.btf_dump** %4, align 8
  %23 = getelementptr inbounds %struct.btf_dump, %struct.btf_dump* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* %7, align 8
  %26 = mul i64 %25, 4
  %27 = call i32* @realloc(i32* %24, i64 %26)
  store i32* %27, i32** %6, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %15
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %52

33:                                               ; preds = %15
  %34 = load i32*, i32** %6, align 8
  %35 = load %struct.btf_dump*, %struct.btf_dump** %4, align 8
  %36 = getelementptr inbounds %struct.btf_dump, %struct.btf_dump* %35, i32 0, i32 2
  store i32* %34, i32** %36, align 8
  %37 = load i64, i64* %7, align 8
  %38 = trunc i64 %37 to i32
  %39 = load %struct.btf_dump*, %struct.btf_dump** %4, align 8
  %40 = getelementptr inbounds %struct.btf_dump, %struct.btf_dump* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %33, %2
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.btf_dump*, %struct.btf_dump** %4, align 8
  %44 = getelementptr inbounds %struct.btf_dump, %struct.btf_dump* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.btf_dump*, %struct.btf_dump** %4, align 8
  %47 = getelementptr inbounds %struct.btf_dump, %struct.btf_dump* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i32, i32* %45, i64 %50
  store i32 %42, i32* %51, align 4
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %41, %30
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i64 @max(i32, i32) #1

declare dso_local i32* @realloc(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
