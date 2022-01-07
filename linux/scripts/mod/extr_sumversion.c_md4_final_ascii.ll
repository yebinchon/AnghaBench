; ModuleID = '/home/carl/AnghaBench/linux/scripts/mod/extr_sumversion.c_md4_final_ascii.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/mod/extr_sumversion.c_md4_final_ascii.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md4_ctx = type { i32, i32*, i32* }

@.str = private unnamed_addr constant [17 x i8] c"%08X%08X%08X%08X\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.md4_ctx*, i8*, i32)* @md4_final_ascii to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @md4_final_ascii(%struct.md4_ctx* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.md4_ctx*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.md4_ctx* %0, %struct.md4_ctx** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.md4_ctx*, %struct.md4_ctx** %4, align 8
  %11 = getelementptr inbounds %struct.md4_ctx, %struct.md4_ctx* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %12, 63
  store i32 %13, i32* %7, align 4
  %14 = load %struct.md4_ctx*, %struct.md4_ctx** %4, align 8
  %15 = getelementptr inbounds %struct.md4_ctx, %struct.md4_ctx* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = bitcast i32* %16 to i8*
  %18 = load i32, i32* %7, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  store i8* %20, i8** %8, align 8
  %21 = load i32, i32* %7, align 4
  %22 = add i32 %21, 1
  %23 = sub i32 56, %22
  store i32 %23, i32* %9, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %8, align 8
  store i8 -128, i8* %24, align 1
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %3
  %29 = load i8*, i8** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = add i64 %31, 4
  %33 = trunc i64 %32 to i32
  %34 = call i32 @memset(i8* %29, i32 0, i32 %33)
  %35 = load %struct.md4_ctx*, %struct.md4_ctx** %4, align 8
  %36 = call i32 @md4_transform_helper(%struct.md4_ctx* %35)
  %37 = load %struct.md4_ctx*, %struct.md4_ctx** %4, align 8
  %38 = getelementptr inbounds %struct.md4_ctx, %struct.md4_ctx* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = bitcast i32* %39 to i8*
  store i8* %40, i8** %8, align 8
  store i32 56, i32* %9, align 4
  br label %41

41:                                               ; preds = %28, %3
  %42 = load i8*, i8** %8, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @memset(i8* %42, i32 0, i32 %43)
  %45 = load %struct.md4_ctx*, %struct.md4_ctx** %4, align 8
  %46 = getelementptr inbounds %struct.md4_ctx, %struct.md4_ctx* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = shl i32 %47, 3
  %49 = load %struct.md4_ctx*, %struct.md4_ctx** %4, align 8
  %50 = getelementptr inbounds %struct.md4_ctx, %struct.md4_ctx* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 14
  store i32 %48, i32* %52, align 4
  %53 = load %struct.md4_ctx*, %struct.md4_ctx** %4, align 8
  %54 = getelementptr inbounds %struct.md4_ctx, %struct.md4_ctx* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = ashr i32 %55, 29
  %57 = load %struct.md4_ctx*, %struct.md4_ctx** %4, align 8
  %58 = getelementptr inbounds %struct.md4_ctx, %struct.md4_ctx* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 15
  store i32 %56, i32* %60, align 4
  %61 = load %struct.md4_ctx*, %struct.md4_ctx** %4, align 8
  %62 = getelementptr inbounds %struct.md4_ctx, %struct.md4_ctx* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @le32_to_cpu_array(i32* %63, i32 1)
  %65 = load %struct.md4_ctx*, %struct.md4_ctx** %4, align 8
  %66 = getelementptr inbounds %struct.md4_ctx, %struct.md4_ctx* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.md4_ctx*, %struct.md4_ctx** %4, align 8
  %69 = getelementptr inbounds %struct.md4_ctx, %struct.md4_ctx* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @md4_transform(i32* %67, i32* %70)
  %72 = load %struct.md4_ctx*, %struct.md4_ctx** %4, align 8
  %73 = getelementptr inbounds %struct.md4_ctx, %struct.md4_ctx* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @cpu_to_le32_array(i32* %74, i32 2)
  %76 = load i8*, i8** %5, align 8
  %77 = load i32, i32* %6, align 4
  %78 = load %struct.md4_ctx*, %struct.md4_ctx** %4, align 8
  %79 = getelementptr inbounds %struct.md4_ctx, %struct.md4_ctx* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.md4_ctx*, %struct.md4_ctx** %4, align 8
  %84 = getelementptr inbounds %struct.md4_ctx, %struct.md4_ctx* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.md4_ctx*, %struct.md4_ctx** %4, align 8
  %89 = getelementptr inbounds %struct.md4_ctx, %struct.md4_ctx* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 2
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.md4_ctx*, %struct.md4_ctx** %4, align 8
  %94 = getelementptr inbounds %struct.md4_ctx, %struct.md4_ctx* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 3
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @snprintf(i8* %76, i32 %77, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %82, i32 %87, i32 %92, i32 %97)
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @md4_transform_helper(%struct.md4_ctx*) #1

declare dso_local i32 @le32_to_cpu_array(i32*, i32) #1

declare dso_local i32 @md4_transform(i32*, i32*) #1

declare dso_local i32 @cpu_to_le32_array(i32*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
