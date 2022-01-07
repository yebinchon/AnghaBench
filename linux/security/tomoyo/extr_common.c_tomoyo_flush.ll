; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_common.c_tomoyo_flush.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_common.c_tomoyo_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_io_buffer = type { i64, %struct.TYPE_2__, i64, i64 }
%struct.TYPE_2__ = type { i64, i8**, i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tomoyo_io_buffer*)* @tomoyo_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tomoyo_flush(%struct.tomoyo_io_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tomoyo_io_buffer*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.tomoyo_io_buffer* %0, %struct.tomoyo_io_buffer** %3, align 8
  br label %6

6:                                                ; preds = %129, %1
  %7 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %3, align 8
  %8 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %130

12:                                               ; preds = %6
  %13 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %3, align 8
  %14 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i8**, i8*** %15, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %4, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i64 @strlen(i8* %19)
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %61

23:                                               ; preds = %12
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %3, align 8
  %26 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ugt i64 %24, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %3, align 8
  %31 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %5, align 8
  br label %33

33:                                               ; preds = %29, %23
  %34 = load i64, i64* %5, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %134

37:                                               ; preds = %33
  %38 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %3, align 8
  %39 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = load i64, i64* %5, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i64 @copy_to_user(i64 %40, i8* %41, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %134

47:                                               ; preds = %37
  %48 = load i64, i64* %5, align 8
  %49 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %3, align 8
  %50 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = sub i64 %51, %48
  store i64 %52, i64* %50, align 8
  %53 = load i64, i64* %5, align 8
  %54 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %3, align 8
  %55 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = add i64 %56, %53
  store i64 %57, i64* %55, align 8
  %58 = load i64, i64* %5, align 8
  %59 = load i8*, i8** %4, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 %58
  store i8* %60, i8** %4, align 8
  br label %61

61:                                               ; preds = %47, %12
  %62 = load i8*, i8** %4, align 8
  %63 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %3, align 8
  %64 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i8**, i8*** %65, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 0
  store i8* %62, i8** %67, align 8
  %68 = load i8*, i8** %4, align 8
  %69 = load i8, i8* %68, align 1
  %70 = icmp ne i8 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %61
  store i32 0, i32* %2, align 4
  br label %134

72:                                               ; preds = %61
  %73 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %3, align 8
  %74 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %98

77:                                               ; preds = %72
  %78 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %3, align 8
  %79 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %3, align 8
  %84 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = call i64 @copy_to_user(i64 %85, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 1)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %82, %77
  store i32 0, i32* %2, align 4
  br label %134

89:                                               ; preds = %82
  %90 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %3, align 8
  %91 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = add i64 %92, -1
  store i64 %93, i64* %91, align 8
  %94 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %3, align 8
  %95 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %96, 1
  store i64 %97, i64* %95, align 8
  br label %98

98:                                               ; preds = %89, %72
  %99 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %3, align 8
  %100 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = add i64 %102, -1
  store i64 %103, i64* %101, align 8
  store i64 0, i64* %5, align 8
  br label %104

104:                                              ; preds = %126, %98
  %105 = load i64, i64* %5, align 8
  %106 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %3, align 8
  %107 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ult i64 %105, %109
  br i1 %110, label %111, label %129

111:                                              ; preds = %104
  %112 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %3, align 8
  %113 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  %115 = load i8**, i8*** %114, align 8
  %116 = load i64, i64* %5, align 8
  %117 = add i64 %116, 1
  %118 = getelementptr inbounds i8*, i8** %115, i64 %117
  %119 = load i8*, i8** %118, align 8
  %120 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %3, align 8
  %121 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 1
  %123 = load i8**, i8*** %122, align 8
  %124 = load i64, i64* %5, align 8
  %125 = getelementptr inbounds i8*, i8** %123, i64 %124
  store i8* %119, i8** %125, align 8
  br label %126

126:                                              ; preds = %111
  %127 = load i64, i64* %5, align 8
  %128 = add i64 %127, 1
  store i64 %128, i64* %5, align 8
  br label %104

129:                                              ; preds = %104
  br label %6

130:                                              ; preds = %6
  %131 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %3, align 8
  %132 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 2
  store i64 0, i64* %133, align 8
  store i32 1, i32* %2, align 4
  br label %134

134:                                              ; preds = %130, %88, %71, %46, %36
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @copy_to_user(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
