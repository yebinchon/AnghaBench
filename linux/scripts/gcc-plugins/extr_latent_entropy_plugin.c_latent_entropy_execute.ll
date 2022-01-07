; ModuleID = '/home/carl/AnghaBench/linux/scripts/gcc-plugins/extr_latent_entropy_plugin.c_latent_entropy_execute.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/gcc-plugins/extr_latent_entropy_plugin.c_latent_entropy_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_7__* }

@cfun = common dso_local global i32 0, align 4
@long_unsigned_type_node = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"local_entropy\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @latent_entropy_execute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @latent_entropy_execute() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = call i32 (...) @create_latent_entropy_decl()
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %54

7:                                                ; preds = %0
  %8 = load i32, i32* @cfun, align 4
  %9 = call i32 @ENTRY_BLOCK_PTR_FOR_FN(i32 %8)
  %10 = call i32 @single_succ_p(i32 %9)
  %11 = call i32 @gcc_assert(i32 %10)
  %12 = load i32, i32* @cfun, align 4
  %13 = call i32 @ENTRY_BLOCK_PTR_FOR_FN(i32 %12)
  %14 = call %struct.TYPE_7__* @single_succ(i32 %13)
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %2, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %16 = call i32 @single_pred_p(%struct.TYPE_7__* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %7
  %19 = load i32, i32* @cfun, align 4
  %20 = call i32 @ENTRY_BLOCK_PTR_FOR_FN(i32 %19)
  %21 = call i32 @single_succ_edge(i32 %20)
  %22 = call i32 @split_edge(i32 %21)
  %23 = load i32, i32* @cfun, align 4
  %24 = call i32 @ENTRY_BLOCK_PTR_FOR_FN(i32 %23)
  %25 = call i32 @single_succ_p(i32 %24)
  %26 = call i32 @gcc_assert(i32 %25)
  %27 = load i32, i32* @cfun, align 4
  %28 = call i32 @ENTRY_BLOCK_PTR_FOR_FN(i32 %27)
  %29 = call %struct.TYPE_7__* @single_succ(i32 %28)
  store %struct.TYPE_7__* %29, %struct.TYPE_7__** %2, align 8
  br label %30

30:                                               ; preds = %18, %7
  %31 = load i32, i32* @long_unsigned_type_node, align 4
  %32 = call i32 @create_var(i32 %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %32, i32* %3, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @init_local_entropy(%struct.TYPE_7__* %33, i32 %34)
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  store %struct.TYPE_7__* %38, %struct.TYPE_7__** %2, align 8
  br label %39

39:                                               ; preds = %44, %30
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %41 = load i32, i32* @cfun, align 4
  %42 = call %struct.TYPE_7__* @EXIT_BLOCK_PTR_FOR_FN(i32 %41)
  %43 = icmp ne %struct.TYPE_7__* %40, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @perturb_local_entropy(%struct.TYPE_7__* %45, i32 %46)
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  store %struct.TYPE_7__* %50, %struct.TYPE_7__** %2, align 8
  br label %39

51:                                               ; preds = %39
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @perturb_latent_entropy(i32 %52)
  store i32 0, i32* %1, align 4
  br label %54

54:                                               ; preds = %51, %6
  %55 = load i32, i32* %1, align 4
  ret i32 %55
}

declare dso_local i32 @create_latent_entropy_decl(...) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @single_succ_p(i32) #1

declare dso_local i32 @ENTRY_BLOCK_PTR_FOR_FN(i32) #1

declare dso_local %struct.TYPE_7__* @single_succ(i32) #1

declare dso_local i32 @single_pred_p(%struct.TYPE_7__*) #1

declare dso_local i32 @split_edge(i32) #1

declare dso_local i32 @single_succ_edge(i32) #1

declare dso_local i32 @create_var(i32, i8*) #1

declare dso_local i32 @init_local_entropy(%struct.TYPE_7__*, i32) #1

declare dso_local %struct.TYPE_7__* @EXIT_BLOCK_PTR_FOR_FN(i32) #1

declare dso_local i32 @perturb_local_entropy(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @perturb_latent_entropy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
