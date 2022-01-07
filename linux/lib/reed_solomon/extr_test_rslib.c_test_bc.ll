; ModuleID = '/home/carl/AnghaBench/linux/lib/reed_solomon/extr_test_rslib.c_test_bc.c'
source_filename = "/home/carl/AnghaBench/linux/lib/reed_solomon/extr_test_rslib.c_test_bc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rs_control = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.bcstat = type { i32, i32, i32, i32 }
%struct.wspace = type { i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rs_control*, i32, i32, i32, i32, %struct.bcstat*, %struct.wspace*)* @test_bc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_bc(%struct.rs_control* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.bcstat* %5, %struct.wspace* %6) #0 {
  %8 = alloca %struct.rs_control*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.bcstat*, align 8
  %14 = alloca %struct.wspace*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.rs_control* %0, %struct.rs_control** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.bcstat* %5, %struct.bcstat** %13, align 8
  store %struct.wspace* %6, %struct.wspace** %14, align 8
  %22 = load %struct.rs_control*, %struct.rs_control** %8, align 8
  %23 = getelementptr inbounds %struct.rs_control, %struct.rs_control* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %15, align 4
  %29 = sub nsw i32 %27, %28
  store i32 %29, i32* %16, align 4
  %30 = load %struct.wspace*, %struct.wspace** %14, align 8
  %31 = getelementptr inbounds %struct.wspace, %struct.wspace* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %17, align 8
  %33 = load %struct.wspace*, %struct.wspace** %14, align 8
  %34 = getelementptr inbounds %struct.wspace, %struct.wspace* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %18, align 8
  %36 = load %struct.wspace*, %struct.wspace** %14, align 8
  %37 = getelementptr inbounds %struct.wspace, %struct.wspace* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %19, align 8
  store i32 0, i32* %21, align 4
  br label %39

39:                                               ; preds = %107, %7
  %40 = load i32, i32* %21, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %110

43:                                               ; preds = %39
  %44 = load %struct.rs_control*, %struct.rs_control** %8, align 8
  %45 = load %struct.wspace*, %struct.wspace** %14, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @get_rcw_we(%struct.rs_control* %44, %struct.wspace* %45, i32 %46, i32 %47, i32 %48)
  %50 = load %struct.rs_control*, %struct.rs_control** %8, align 8
  %51 = load i32*, i32** %19, align 8
  %52 = load i32*, i32** %19, align 8
  %53 = load i32, i32* %16, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %16, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32*, i32** %17, align 8
  %59 = load i32*, i32** %18, align 8
  %60 = call i32 @decode_rs16(%struct.rs_control* %50, i32* %51, i32* %55, i32 %56, i32* null, i32 %57, i32* %58, i32 0, i32* %59)
  store i32 %60, i32* %20, align 4
  %61 = load i32*, i32** %19, align 8
  %62 = load i32, i32* %20, align 4
  %63 = load i32*, i32** %18, align 8
  %64 = load i32*, i32** %17, align 8
  %65 = call i32 @fix_err(i32* %61, i32 %62, i32* %63, i32* %64)
  %66 = load i32, i32* %20, align 4
  %67 = icmp sge i32 %66, 0
  br i1 %67, label %68, label %101

68:                                               ; preds = %43
  %69 = load %struct.bcstat*, %struct.bcstat** %13, align 8
  %70 = getelementptr inbounds %struct.bcstat, %struct.bcstat* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  %73 = load i32*, i32** %18, align 8
  %74 = load i32, i32* %15, align 4
  %75 = sext i32 %74 to i64
  %76 = mul i64 %75, 4
  %77 = trunc i64 %76 to i32
  %78 = call i32 @memset(i32* %73, i32 0, i32 %77)
  %79 = load %struct.rs_control*, %struct.rs_control** %8, align 8
  %80 = load i32*, i32** %19, align 8
  %81 = load i32, i32* %16, align 4
  %82 = load i32*, i32** %18, align 8
  %83 = call i32 @encode_rs16(%struct.rs_control* %79, i32* %80, i32 %81, i32* %82, i32 0)
  %84 = load i32*, i32** %19, align 8
  %85 = load i32, i32* %16, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32*, i32** %18, align 8
  %89 = load i32, i32* %15, align 4
  %90 = sext i32 %89 to i64
  %91 = mul i64 %90, 4
  %92 = trunc i64 %91 to i32
  %93 = call i64 @memcmp(i32* %87, i32* %88, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %68
  %96 = load %struct.bcstat*, %struct.bcstat** %13, align 8
  %97 = getelementptr inbounds %struct.bcstat, %struct.bcstat* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %95, %68
  br label %106

101:                                              ; preds = %43
  %102 = load %struct.bcstat*, %struct.bcstat** %13, align 8
  %103 = getelementptr inbounds %struct.bcstat, %struct.bcstat* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %101, %100
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %21, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %21, align 4
  br label %39

110:                                              ; preds = %39
  %111 = load i32, i32* %12, align 4
  %112 = load %struct.bcstat*, %struct.bcstat** %13, align 8
  %113 = getelementptr inbounds %struct.bcstat, %struct.bcstat* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, %111
  store i32 %115, i32* %113, align 4
  ret void
}

declare dso_local i32 @get_rcw_we(%struct.rs_control*, %struct.wspace*, i32, i32, i32) #1

declare dso_local i32 @decode_rs16(%struct.rs_control*, i32*, i32*, i32, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @fix_err(i32*, i32, i32*, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @encode_rs16(%struct.rs_control*, i32*, i32, i32*, i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
