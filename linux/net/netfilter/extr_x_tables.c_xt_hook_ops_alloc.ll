; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_x_tables.c_xt_hook_ops_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_x_tables.c_xt_hook_ops_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_hook_ops = type { i64, i32, i32, i32* }
%struct.xt_table = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nf_hook_ops* @xt_hook_ops_alloc(%struct.xt_table* %0, i32* %1) #0 {
  %3 = alloca %struct.nf_hook_ops*, align 8
  %4 = alloca %struct.xt_table*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.nf_hook_ops*, align 8
  store %struct.xt_table* %0, %struct.xt_table** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.xt_table*, %struct.xt_table** %4, align 8
  %12 = getelementptr inbounds %struct.xt_table, %struct.xt_table* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i64 @hweight32(i32 %14)
  store i64 %15, i64* %8, align 8
  %16 = load i64, i64* %8, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.nf_hook_ops* @ERR_PTR(i32 %20)
  store %struct.nf_hook_ops* %21, %struct.nf_hook_ops** %3, align 8
  br label %81

22:                                               ; preds = %2
  %23 = load i64, i64* %8, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.nf_hook_ops* @kcalloc(i64 %23, i32 24, i32 %24)
  store %struct.nf_hook_ops* %25, %struct.nf_hook_ops** %10, align 8
  %26 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %10, align 8
  %27 = icmp eq %struct.nf_hook_ops* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  %31 = call %struct.nf_hook_ops* @ERR_PTR(i32 %30)
  store %struct.nf_hook_ops* %31, %struct.nf_hook_ops** %3, align 8
  br label %81

32:                                               ; preds = %22
  store i64 0, i64* %7, align 8
  store i64 0, i64* %9, align 8
  br label %33

33:                                               ; preds = %74, %32
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* %8, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br label %40

40:                                               ; preds = %37, %33
  %41 = phi i1 [ false, %33 ], [ %39, %37 ]
  br i1 %41, label %42, label %79

42:                                               ; preds = %40
  %43 = load i32, i32* %6, align 4
  %44 = and i32 %43, 1
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  br label %74

47:                                               ; preds = %42
  %48 = load i32*, i32** %5, align 8
  %49 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %10, align 8
  %50 = load i64, i64* %7, align 8
  %51 = getelementptr inbounds %struct.nf_hook_ops, %struct.nf_hook_ops* %49, i64 %50
  %52 = getelementptr inbounds %struct.nf_hook_ops, %struct.nf_hook_ops* %51, i32 0, i32 3
  store i32* %48, i32** %52, align 8
  %53 = load %struct.xt_table*, %struct.xt_table** %4, align 8
  %54 = getelementptr inbounds %struct.xt_table, %struct.xt_table* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %10, align 8
  %57 = load i64, i64* %7, align 8
  %58 = getelementptr inbounds %struct.nf_hook_ops, %struct.nf_hook_ops* %56, i64 %57
  %59 = getelementptr inbounds %struct.nf_hook_ops, %struct.nf_hook_ops* %58, i32 0, i32 2
  store i32 %55, i32* %59, align 4
  %60 = load i64, i64* %9, align 8
  %61 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %10, align 8
  %62 = load i64, i64* %7, align 8
  %63 = getelementptr inbounds %struct.nf_hook_ops, %struct.nf_hook_ops* %61, i64 %62
  %64 = getelementptr inbounds %struct.nf_hook_ops, %struct.nf_hook_ops* %63, i32 0, i32 0
  store i64 %60, i64* %64, align 8
  %65 = load %struct.xt_table*, %struct.xt_table** %4, align 8
  %66 = getelementptr inbounds %struct.xt_table, %struct.xt_table* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %10, align 8
  %69 = load i64, i64* %7, align 8
  %70 = getelementptr inbounds %struct.nf_hook_ops, %struct.nf_hook_ops* %68, i64 %69
  %71 = getelementptr inbounds %struct.nf_hook_ops, %struct.nf_hook_ops* %70, i32 0, i32 1
  store i32 %67, i32* %71, align 8
  %72 = load i64, i64* %7, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %7, align 8
  br label %74

74:                                               ; preds = %47, %46
  %75 = load i32, i32* %6, align 4
  %76 = lshr i32 %75, 1
  store i32 %76, i32* %6, align 4
  %77 = load i64, i64* %9, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %9, align 8
  br label %33

79:                                               ; preds = %40
  %80 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %10, align 8
  store %struct.nf_hook_ops* %80, %struct.nf_hook_ops** %3, align 8
  br label %81

81:                                               ; preds = %79, %28, %18
  %82 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %3, align 8
  ret %struct.nf_hook_ops* %82
}

declare dso_local i64 @hweight32(i32) #1

declare dso_local %struct.nf_hook_ops* @ERR_PTR(i32) #1

declare dso_local %struct.nf_hook_ops* @kcalloc(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
