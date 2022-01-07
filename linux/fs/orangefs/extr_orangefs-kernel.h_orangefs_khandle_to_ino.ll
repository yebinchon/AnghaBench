; ModuleID = '/home/carl/AnghaBench/linux/fs/orangefs/extr_orangefs-kernel.h_orangefs_khandle_to_ino.c'
source_filename = "/home/carl/AnghaBench/linux/fs/orangefs/extr_orangefs-kernel.h_orangefs_khandle_to_ino.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.orangefs_khandle = type { i32* }
%union.anon = type { i32, [4 x i8] }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.orangefs_khandle*)* @orangefs_khandle_to_ino to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orangefs_khandle_to_ino(%struct.orangefs_khandle* %0) #0 {
  %2 = alloca %struct.orangefs_khandle*, align 8
  %3 = alloca %union.anon, align 4
  store %struct.orangefs_khandle* %0, %struct.orangefs_khandle** %2, align 8
  %4 = load %struct.orangefs_khandle*, %struct.orangefs_khandle** %2, align 8
  %5 = getelementptr inbounds %struct.orangefs_khandle, %struct.orangefs_khandle* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.orangefs_khandle*, %struct.orangefs_khandle** %2, align 8
  %10 = getelementptr inbounds %struct.orangefs_khandle, %struct.orangefs_khandle* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 4
  %13 = load i32, i32* %12, align 4
  %14 = xor i32 %8, %13
  %15 = trunc i32 %14 to i8
  %16 = bitcast %union.anon* %3 to [8 x i8]*
  %17 = getelementptr inbounds [8 x i8], [8 x i8]* %16, i64 0, i64 0
  store i8 %15, i8* %17, align 4
  %18 = load %struct.orangefs_khandle*, %struct.orangefs_khandle** %2, align 8
  %19 = getelementptr inbounds %struct.orangefs_khandle, %struct.orangefs_khandle* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.orangefs_khandle*, %struct.orangefs_khandle** %2, align 8
  %24 = getelementptr inbounds %struct.orangefs_khandle, %struct.orangefs_khandle* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 5
  %27 = load i32, i32* %26, align 4
  %28 = xor i32 %22, %27
  %29 = trunc i32 %28 to i8
  %30 = bitcast %union.anon* %3 to [8 x i8]*
  %31 = getelementptr inbounds [8 x i8], [8 x i8]* %30, i64 0, i64 1
  store i8 %29, i8* %31, align 1
  %32 = load %struct.orangefs_khandle*, %struct.orangefs_khandle** %2, align 8
  %33 = getelementptr inbounds %struct.orangefs_khandle, %struct.orangefs_khandle* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.orangefs_khandle*, %struct.orangefs_khandle** %2, align 8
  %38 = getelementptr inbounds %struct.orangefs_khandle, %struct.orangefs_khandle* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 6
  %41 = load i32, i32* %40, align 4
  %42 = xor i32 %36, %41
  %43 = trunc i32 %42 to i8
  %44 = bitcast %union.anon* %3 to [8 x i8]*
  %45 = getelementptr inbounds [8 x i8], [8 x i8]* %44, i64 0, i64 2
  store i8 %43, i8* %45, align 2
  %46 = load %struct.orangefs_khandle*, %struct.orangefs_khandle** %2, align 8
  %47 = getelementptr inbounds %struct.orangefs_khandle, %struct.orangefs_khandle* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.orangefs_khandle*, %struct.orangefs_khandle** %2, align 8
  %52 = getelementptr inbounds %struct.orangefs_khandle, %struct.orangefs_khandle* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 7
  %55 = load i32, i32* %54, align 4
  %56 = xor i32 %50, %55
  %57 = trunc i32 %56 to i8
  %58 = bitcast %union.anon* %3 to [8 x i8]*
  %59 = getelementptr inbounds [8 x i8], [8 x i8]* %58, i64 0, i64 3
  store i8 %57, i8* %59, align 1
  %60 = load %struct.orangefs_khandle*, %struct.orangefs_khandle** %2, align 8
  %61 = getelementptr inbounds %struct.orangefs_khandle, %struct.orangefs_khandle* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 12
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.orangefs_khandle*, %struct.orangefs_khandle** %2, align 8
  %66 = getelementptr inbounds %struct.orangefs_khandle, %struct.orangefs_khandle* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 8
  %69 = load i32, i32* %68, align 4
  %70 = xor i32 %64, %69
  %71 = trunc i32 %70 to i8
  %72 = bitcast %union.anon* %3 to [8 x i8]*
  %73 = getelementptr inbounds [8 x i8], [8 x i8]* %72, i64 0, i64 4
  store i8 %71, i8* %73, align 4
  %74 = load %struct.orangefs_khandle*, %struct.orangefs_khandle** %2, align 8
  %75 = getelementptr inbounds %struct.orangefs_khandle, %struct.orangefs_khandle* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 13
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.orangefs_khandle*, %struct.orangefs_khandle** %2, align 8
  %80 = getelementptr inbounds %struct.orangefs_khandle, %struct.orangefs_khandle* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 9
  %83 = load i32, i32* %82, align 4
  %84 = xor i32 %78, %83
  %85 = trunc i32 %84 to i8
  %86 = bitcast %union.anon* %3 to [8 x i8]*
  %87 = getelementptr inbounds [8 x i8], [8 x i8]* %86, i64 0, i64 5
  store i8 %85, i8* %87, align 1
  %88 = load %struct.orangefs_khandle*, %struct.orangefs_khandle** %2, align 8
  %89 = getelementptr inbounds %struct.orangefs_khandle, %struct.orangefs_khandle* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 14
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.orangefs_khandle*, %struct.orangefs_khandle** %2, align 8
  %94 = getelementptr inbounds %struct.orangefs_khandle, %struct.orangefs_khandle* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 10
  %97 = load i32, i32* %96, align 4
  %98 = xor i32 %92, %97
  %99 = trunc i32 %98 to i8
  %100 = bitcast %union.anon* %3 to [8 x i8]*
  %101 = getelementptr inbounds [8 x i8], [8 x i8]* %100, i64 0, i64 6
  store i8 %99, i8* %101, align 2
  %102 = load %struct.orangefs_khandle*, %struct.orangefs_khandle** %2, align 8
  %103 = getelementptr inbounds %struct.orangefs_khandle, %struct.orangefs_khandle* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 15
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.orangefs_khandle*, %struct.orangefs_khandle** %2, align 8
  %108 = getelementptr inbounds %struct.orangefs_khandle, %struct.orangefs_khandle* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 11
  %111 = load i32, i32* %110, align 4
  %112 = xor i32 %106, %111
  %113 = trunc i32 %112 to i8
  %114 = bitcast %union.anon* %3 to [8 x i8]*
  %115 = getelementptr inbounds [8 x i8], [8 x i8]* %114, i64 0, i64 7
  store i8 %113, i8* %115, align 1
  %116 = bitcast %union.anon* %3 to i32*
  %117 = load i32, i32* %116, align 4
  ret i32 %117
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
