; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_objagg.c_objagg_obj_root_priv.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_objagg.c_objagg_obj_root_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objagg_obj = type { i8*, %struct.objagg_obj* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @objagg_obj_root_priv(%struct.objagg_obj* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.objagg_obj*, align 8
  store %struct.objagg_obj* %0, %struct.objagg_obj** %3, align 8
  %4 = load %struct.objagg_obj*, %struct.objagg_obj** %3, align 8
  %5 = call i64 @objagg_obj_is_root(%struct.objagg_obj* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load %struct.objagg_obj*, %struct.objagg_obj** %3, align 8
  %9 = getelementptr inbounds %struct.objagg_obj, %struct.objagg_obj* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %2, align 8
  br label %25

11:                                               ; preds = %1
  %12 = load %struct.objagg_obj*, %struct.objagg_obj** %3, align 8
  %13 = getelementptr inbounds %struct.objagg_obj, %struct.objagg_obj* %12, i32 0, i32 1
  %14 = load %struct.objagg_obj*, %struct.objagg_obj** %13, align 8
  %15 = call i64 @objagg_obj_is_root(%struct.objagg_obj* %14)
  %16 = icmp ne i64 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @WARN_ON(i32 %18)
  %20 = load %struct.objagg_obj*, %struct.objagg_obj** %3, align 8
  %21 = getelementptr inbounds %struct.objagg_obj, %struct.objagg_obj* %20, i32 0, i32 1
  %22 = load %struct.objagg_obj*, %struct.objagg_obj** %21, align 8
  %23 = getelementptr inbounds %struct.objagg_obj, %struct.objagg_obj* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %2, align 8
  br label %25

25:                                               ; preds = %11, %7
  %26 = load i8*, i8** %2, align 8
  ret i8* %26
}

declare dso_local i64 @objagg_obj_is_root(%struct.objagg_obj*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
