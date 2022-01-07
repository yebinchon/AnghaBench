; ModuleID = '/home/carl/AnghaBench/linux/scripts/gcc-plugins/extr_latent_entropy_plugin.c_latent_entropy_gate.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/gcc-plugins/extr_latent_entropy_plugin.c_latent_entropy_gate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@current_function_decl = common dso_local global i32 0, align 4
@cfun = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"latent_entropy\00", align 1
@NULL_TREE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @latent_entropy_gate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @latent_entropy_gate() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @current_function_decl, align 4
  %4 = call i64 @TREE_THIS_VOLATILE(i32 %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %23

7:                                                ; preds = %0
  %8 = load i32, i32* @cfun, align 4
  %9 = call %struct.TYPE_2__* @EXIT_BLOCK_PTR_FOR_FN(i32 %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @EDGE_COUNT(i32 %11)
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %7
  store i32 0, i32* %1, align 4
  br label %23

15:                                               ; preds = %7
  %16 = load i32, i32* @current_function_decl, align 4
  %17 = call i32 @DECL_ATTRIBUTES(i32 %16)
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* %2, align 4
  %19 = call i64 @lookup_attribute(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i64, i64* @NULL_TREE, align 8
  %21 = icmp ne i64 %19, %20
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %1, align 4
  br label %23

23:                                               ; preds = %15, %14, %6
  %24 = load i32, i32* %1, align 4
  ret i32 %24
}

declare dso_local i64 @TREE_THIS_VOLATILE(i32) #1

declare dso_local i64 @EDGE_COUNT(i32) #1

declare dso_local %struct.TYPE_2__* @EXIT_BLOCK_PTR_FOR_FN(i32) #1

declare dso_local i32 @DECL_ATTRIBUTES(i32) #1

declare dso_local i64 @lookup_attribute(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
