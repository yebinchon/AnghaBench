; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/plugins/extr_plugin_function.c_add_child.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/plugins/extr_plugin_function.c_add_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.func_stack = type { i32, i8** }

@STK_BLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"could not allocate plugin memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.func_stack*, i8*, i32)* @add_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_child(%struct.func_stack* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.func_stack*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  store %struct.func_stack* %0, %struct.func_stack** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  br label %84

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.func_stack*, %struct.func_stack** %4, align 8
  %15 = getelementptr inbounds %struct.func_stack, %struct.func_stack* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %12
  %19 = load %struct.func_stack*, %struct.func_stack** %4, align 8
  %20 = getelementptr inbounds %struct.func_stack, %struct.func_stack* %19, i32 0, i32 1
  %21 = load i8**, i8*** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %21, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @free(i8* %25)
  br label %75

27:                                               ; preds = %12
  %28 = load %struct.func_stack*, %struct.func_stack** %4, align 8
  %29 = getelementptr inbounds %struct.func_stack, %struct.func_stack* %28, i32 0, i32 1
  %30 = load i8**, i8*** %29, align 8
  %31 = load %struct.func_stack*, %struct.func_stack** %4, align 8
  %32 = getelementptr inbounds %struct.func_stack, %struct.func_stack* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @STK_BLK, align 4
  %35 = add nsw i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = mul i64 8, %36
  %38 = trunc i64 %37 to i32
  %39 = call i8** @realloc(i8** %30, i32 %38)
  store i8** %39, i8*** %8, align 8
  %40 = load i8**, i8*** %8, align 8
  %41 = icmp ne i8** %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %27
  %43 = call i32 @warning(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %84

44:                                               ; preds = %27
  %45 = load i8**, i8*** %8, align 8
  %46 = load %struct.func_stack*, %struct.func_stack** %4, align 8
  %47 = getelementptr inbounds %struct.func_stack, %struct.func_stack* %46, i32 0, i32 1
  store i8** %45, i8*** %47, align 8
  %48 = load %struct.func_stack*, %struct.func_stack** %4, align 8
  %49 = getelementptr inbounds %struct.func_stack, %struct.func_stack* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %66, %44
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.func_stack*, %struct.func_stack** %4, align 8
  %54 = getelementptr inbounds %struct.func_stack, %struct.func_stack* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @STK_BLK, align 4
  %57 = add nsw i32 %55, %56
  %58 = icmp slt i32 %52, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %51
  %60 = load %struct.func_stack*, %struct.func_stack** %4, align 8
  %61 = getelementptr inbounds %struct.func_stack, %struct.func_stack* %60, i32 0, i32 1
  %62 = load i8**, i8*** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  store i8* null, i8** %65, align 8
  br label %66

66:                                               ; preds = %59
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %51

69:                                               ; preds = %51
  %70 = load i32, i32* @STK_BLK, align 4
  %71 = load %struct.func_stack*, %struct.func_stack** %4, align 8
  %72 = getelementptr inbounds %struct.func_stack, %struct.func_stack* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, %70
  store i32 %74, i32* %72, align 8
  br label %75

75:                                               ; preds = %69, %18
  %76 = load i8*, i8** %5, align 8
  %77 = call i8* @strdup(i8* %76)
  %78 = load %struct.func_stack*, %struct.func_stack** %4, align 8
  %79 = getelementptr inbounds %struct.func_stack, %struct.func_stack* %78, i32 0, i32 1
  %80 = load i8**, i8*** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %80, i64 %82
  store i8* %77, i8** %83, align 8
  br label %84

84:                                               ; preds = %75, %42, %11
  ret void
}

declare dso_local i32 @free(i8*) #1

declare dso_local i8** @realloc(i8**, i32) #1

declare dso_local i32 @warning(i8*) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
