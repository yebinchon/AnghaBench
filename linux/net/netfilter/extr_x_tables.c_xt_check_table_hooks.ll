; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_x_tables.c_xt_check_table_hooks.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_x_tables.c_xt_check_table_hooks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_table_info = type { i32*, i32* }

@.str = private unnamed_addr constant [19 x i8] c"unsorted underflow\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"duplicate underflow\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"unsorted entry\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"duplicate entry\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"%s at hook %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xt_check_table_hooks(%struct.xt_table_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xt_table_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.xt_table_info* %0, %struct.xt_table_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.xt_table_info*, %struct.xt_table_info** %4, align 8
  %12 = getelementptr inbounds %struct.xt_table_info, %struct.xt_table_info* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @ARRAY_SIZE(i32* %13)
  %15 = load %struct.xt_table_info*, %struct.xt_table_info** %4, align 8
  %16 = getelementptr inbounds %struct.xt_table_info, %struct.xt_table_info* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @ARRAY_SIZE(i32* %17)
  %19 = icmp ne i32 %14, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUILD_BUG_ON(i32 %20)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %123, %2
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.xt_table_info*, %struct.xt_table_info** %4, align 8
  %25 = getelementptr inbounds %struct.xt_table_info, %struct.xt_table_info* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @ARRAY_SIZE(i32* %26)
  %28 = icmp ult i32 %23, %27
  br i1 %28, label %29, label %126

29:                                               ; preds = %22
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %7, align 4
  %32 = shl i32 1, %31
  %33 = and i32 %30, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  br label %123

36:                                               ; preds = %29
  %37 = load %struct.xt_table_info*, %struct.xt_table_info** %4, align 8
  %38 = getelementptr inbounds %struct.xt_table_info, %struct.xt_table_info* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %133

48:                                               ; preds = %36
  %49 = load %struct.xt_table_info*, %struct.xt_table_info** %4, align 8
  %50 = getelementptr inbounds %struct.xt_table_info, %struct.xt_table_info* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %60

57:                                               ; preds = %48
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %133

60:                                               ; preds = %48
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %108

63:                                               ; preds = %60
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.xt_table_info*, %struct.xt_table_info** %4, align 8
  %66 = getelementptr inbounds %struct.xt_table_info, %struct.xt_table_info* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = icmp ugt i32 %64, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %63
  br label %127

74:                                               ; preds = %63
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.xt_table_info*, %struct.xt_table_info** %4, align 8
  %77 = getelementptr inbounds %struct.xt_table_info, %struct.xt_table_info* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %75, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %74
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %127

85:                                               ; preds = %74
  %86 = load i32, i32* %9, align 4
  %87 = load %struct.xt_table_info*, %struct.xt_table_info** %4, align 8
  %88 = getelementptr inbounds %struct.xt_table_info, %struct.xt_table_info* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = icmp ugt i32 %86, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %85
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  br label %127

96:                                               ; preds = %85
  %97 = load i32, i32* %9, align 4
  %98 = load %struct.xt_table_info*, %struct.xt_table_info** %4, align 8
  %99 = getelementptr inbounds %struct.xt_table_info, %struct.xt_table_info* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %7, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %97, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %96
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  br label %127

107:                                              ; preds = %96
  br label %108

108:                                              ; preds = %107, %60
  %109 = load %struct.xt_table_info*, %struct.xt_table_info** %4, align 8
  %110 = getelementptr inbounds %struct.xt_table_info, %struct.xt_table_info* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %7, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %9, align 4
  %116 = load %struct.xt_table_info*, %struct.xt_table_info** %4, align 8
  %117 = getelementptr inbounds %struct.xt_table_info, %struct.xt_table_info* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %7, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %8, align 4
  store i32 1, i32* %10, align 4
  br label %123

123:                                              ; preds = %108, %35
  %124 = load i32, i32* %7, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %7, align 4
  br label %22

126:                                              ; preds = %22
  store i32 0, i32* %3, align 4
  br label %133

127:                                              ; preds = %106, %95, %84, %73
  %128 = load i8*, i8** %6, align 8
  %129 = load i32, i32* %7, align 4
  %130 = call i32 @pr_err_ratelimited(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* %128, i32 %129)
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %3, align 4
  br label %133

133:                                              ; preds = %127, %126, %57, %45
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @pr_err_ratelimited(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
