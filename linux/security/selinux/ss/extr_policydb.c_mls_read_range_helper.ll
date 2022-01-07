; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_mls_read_range_helper.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_mls_read_range_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mls_range = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i8* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"SELinux: mls:  range overflow\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"SELinux: mls:  truncated range\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"SELinux: mls:  error reading low categories\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"SELinux: mls:  error reading high categories\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"SELinux: mls:  out of memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mls_range*, i8*)* @mls_read_range_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mls_read_range_helper(%struct.mls_range* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mls_range*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mls_range* %0, %struct.mls_range** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @next_entry(i32* %9, i8* %10, i32 4)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %125

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %8, align 4
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @le32_to_cpu(i32 %19)
  %21 = ptrtoint i8* %20 to i32
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %24 = call i32 @ARRAY_SIZE(i32* %23)
  %25 = icmp sgt i32 %22, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %15
  %27 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %125

28:                                               ; preds = %15
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 4, %32
  %34 = trunc i64 %33 to i32
  %35 = call i32 @next_entry(i32* %29, i8* %30, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %125

40:                                               ; preds = %28
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @le32_to_cpu(i32 %42)
  %44 = load %struct.mls_range*, %struct.mls_range** %4, align 8
  %45 = getelementptr inbounds %struct.mls_range, %struct.mls_range* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  store i8* %43, i8** %48, align 8
  %49 = load i32, i32* %7, align 4
  %50 = icmp sgt i32 %49, 1
  br i1 %50, label %51, label %60

51:                                               ; preds = %40
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @le32_to_cpu(i32 %53)
  %55 = load %struct.mls_range*, %struct.mls_range** %4, align 8
  %56 = getelementptr inbounds %struct.mls_range, %struct.mls_range* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  store i8* %54, i8** %59, align 8
  br label %72

60:                                               ; preds = %40
  %61 = load %struct.mls_range*, %struct.mls_range** %4, align 8
  %62 = getelementptr inbounds %struct.mls_range, %struct.mls_range* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.mls_range*, %struct.mls_range** %4, align 8
  %68 = getelementptr inbounds %struct.mls_range, %struct.mls_range* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  store i8* %66, i8** %71, align 8
  br label %72

72:                                               ; preds = %60, %51
  %73 = load %struct.mls_range*, %struct.mls_range** %4, align 8
  %74 = getelementptr inbounds %struct.mls_range, %struct.mls_range* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i8*, i8** %5, align 8
  %79 = call i32 @ebitmap_read(i32* %77, i8* %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %72
  %83 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %125

84:                                               ; preds = %72
  %85 = load i32, i32* %7, align 4
  %86 = icmp sgt i32 %85, 1
  br i1 %86, label %87, label %100

87:                                               ; preds = %84
  %88 = load %struct.mls_range*, %struct.mls_range** %4, align 8
  %89 = getelementptr inbounds %struct.mls_range, %struct.mls_range* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 1
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i8*, i8** %5, align 8
  %94 = call i32 @ebitmap_read(i32* %92, i8* %93)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %87
  %98 = call i32 @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  br label %118

99:                                               ; preds = %87
  br label %117

100:                                              ; preds = %84
  %101 = load %struct.mls_range*, %struct.mls_range** %4, align 8
  %102 = getelementptr inbounds %struct.mls_range, %struct.mls_range* %101, i32 0, i32 0
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 1
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load %struct.mls_range*, %struct.mls_range** %4, align 8
  %107 = getelementptr inbounds %struct.mls_range, %struct.mls_range* %106, i32 0, i32 0
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i64 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = call i32 @ebitmap_cpy(i32* %105, i32* %110)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %100
  %115 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %118

116:                                              ; preds = %100
  br label %117

117:                                              ; preds = %116, %99
  store i32 0, i32* %3, align 4
  br label %127

118:                                              ; preds = %114, %97
  %119 = load %struct.mls_range*, %struct.mls_range** %4, align 8
  %120 = getelementptr inbounds %struct.mls_range, %struct.mls_range* %119, i32 0, i32 0
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i64 0
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = call i32 @ebitmap_destroy(i32* %123)
  br label %125

125:                                              ; preds = %118, %82, %38, %26, %14
  %126 = load i32, i32* %8, align 4
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %125, %117
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i32 @next_entry(i32*, i8*, i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @ebitmap_read(i32*, i8*) #1

declare dso_local i32 @ebitmap_cpy(i32*, i32*) #1

declare dso_local i32 @ebitmap_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
