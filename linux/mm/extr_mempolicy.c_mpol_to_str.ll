; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mempolicy.c_mpol_to_str.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mempolicy.c_mpol_to_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mempolicy = type { i32, i16, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@NODE_MASK_NONE = common dso_local global i32 0, align 4
@default_policy = common dso_local global %struct.mempolicy zeroinitializer, align 4
@MPOL_F_MORON = common dso_local global i32 0, align 4
@MPOL_F_LOCAL = common dso_local global i16 0, align 2
@MPOL_LOCAL = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@policy_modes = common dso_local global i8** null, align 8
@MPOL_MODE_FLAGS = common dso_local global i16 0, align 2
@.str.2 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@MPOL_F_STATIC_NODES = common dso_local global i16 0, align 2
@.str.3 = private unnamed_addr constant [7 x i8] c"static\00", align 1
@MPOL_F_RELATIVE_NODES = common dso_local global i16 0, align 2
@.str.4 = private unnamed_addr constant [9 x i8] c"relative\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c":%*pbl\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mpol_to_str(i8* %0, i32 %1, %struct.mempolicy* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mempolicy*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.mempolicy* %2, %struct.mempolicy** %6, align 8
  %11 = load i8*, i8** %4, align 8
  store i8* %11, i8** %7, align 8
  %12 = load i32, i32* @NODE_MASK_NONE, align 4
  store i32 %12, i32* %8, align 4
  store i16 130, i16* %9, align 2
  store i16 0, i16* %10, align 2
  %13 = load %struct.mempolicy*, %struct.mempolicy** %6, align 8
  %14 = icmp ne %struct.mempolicy* %13, null
  br i1 %14, label %15, label %33

15:                                               ; preds = %3
  %16 = load %struct.mempolicy*, %struct.mempolicy** %6, align 8
  %17 = icmp ne %struct.mempolicy* %16, @default_policy
  br i1 %17, label %18, label %33

18:                                               ; preds = %15
  %19 = load %struct.mempolicy*, %struct.mempolicy** %6, align 8
  %20 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MPOL_F_MORON, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %18
  %26 = load %struct.mempolicy*, %struct.mempolicy** %6, align 8
  %27 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %26, i32 0, i32 1
  %28 = load i16, i16* %27, align 4
  store i16 %28, i16* %9, align 2
  %29 = load %struct.mempolicy*, %struct.mempolicy** %6, align 8
  %30 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = trunc i32 %31 to i16
  store i16 %32, i16* %10, align 2
  br label %33

33:                                               ; preds = %25, %18, %15, %3
  %34 = load i16, i16* %9, align 2
  %35 = zext i16 %34 to i32
  switch i32 %35, label %59 [
    i32 130, label %36
    i32 128, label %37
    i32 131, label %54
    i32 129, label %54
  ]

36:                                               ; preds = %33
  br label %64

37:                                               ; preds = %33
  %38 = load i16, i16* %10, align 2
  %39 = zext i16 %38 to i32
  %40 = load i16, i16* @MPOL_F_LOCAL, align 2
  %41 = zext i16 %40 to i32
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i16, i16* @MPOL_LOCAL, align 2
  store i16 %45, i16* %9, align 2
  br label %53

46:                                               ; preds = %37
  %47 = load %struct.mempolicy*, %struct.mempolicy** %6, align 8
  %48 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @node_set(i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %46, %44
  br label %64

54:                                               ; preds = %33, %33
  %55 = load %struct.mempolicy*, %struct.mempolicy** %6, align 8
  %56 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %8, align 4
  br label %64

59:                                               ; preds = %33
  %60 = call i32 @WARN_ON_ONCE(i32 1)
  %61 = load i8*, i8** %7, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %61, i32 %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %162

64:                                               ; preds = %54, %53, %36
  %65 = load i8*, i8** %7, align 8
  %66 = load i32, i32* %5, align 4
  %67 = load i8**, i8*** @policy_modes, align 8
  %68 = load i16, i16* %9, align 2
  %69 = zext i16 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %67, i64 %69
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %65, i32 %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %71)
  %73 = load i8*, i8** %7, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  store i8* %75, i8** %7, align 8
  %76 = load i16, i16* %10, align 2
  %77 = zext i16 %76 to i32
  %78 = load i16, i16* @MPOL_MODE_FLAGS, align 2
  %79 = zext i16 %78 to i32
  %80 = and i32 %77, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %142

82:                                               ; preds = %64
  %83 = load i8*, i8** %7, align 8
  %84 = load i8*, i8** %4, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load i8*, i8** %7, align 8
  %89 = ptrtoint i8* %87 to i64
  %90 = ptrtoint i8* %88 to i64
  %91 = sub i64 %89, %90
  %92 = trunc i64 %91 to i32
  %93 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %83, i32 %92, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %94 = load i8*, i8** %7, align 8
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i8, i8* %94, i64 %95
  store i8* %96, i8** %7, align 8
  %97 = load i16, i16* %10, align 2
  %98 = zext i16 %97 to i32
  %99 = load i16, i16* @MPOL_F_STATIC_NODES, align 2
  %100 = zext i16 %99 to i32
  %101 = and i32 %98, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %118

103:                                              ; preds = %82
  %104 = load i8*, i8** %7, align 8
  %105 = load i8*, i8** %4, align 8
  %106 = load i32, i32* %5, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  %109 = load i8*, i8** %7, align 8
  %110 = ptrtoint i8* %108 to i64
  %111 = ptrtoint i8* %109 to i64
  %112 = sub i64 %110, %111
  %113 = trunc i64 %112 to i32
  %114 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %104, i32 %113, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %115 = load i8*, i8** %7, align 8
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds i8, i8* %115, i64 %116
  store i8* %117, i8** %7, align 8
  br label %141

118:                                              ; preds = %82
  %119 = load i16, i16* %10, align 2
  %120 = zext i16 %119 to i32
  %121 = load i16, i16* @MPOL_F_RELATIVE_NODES, align 2
  %122 = zext i16 %121 to i32
  %123 = and i32 %120, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %140

125:                                              ; preds = %118
  %126 = load i8*, i8** %7, align 8
  %127 = load i8*, i8** %4, align 8
  %128 = load i32, i32* %5, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %127, i64 %129
  %131 = load i8*, i8** %7, align 8
  %132 = ptrtoint i8* %130 to i64
  %133 = ptrtoint i8* %131 to i64
  %134 = sub i64 %132, %133
  %135 = trunc i64 %134 to i32
  %136 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %126, i32 %135, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %137 = load i8*, i8** %7, align 8
  %138 = sext i32 %136 to i64
  %139 = getelementptr inbounds i8, i8* %137, i64 %138
  store i8* %139, i8** %7, align 8
  br label %140

140:                                              ; preds = %125, %118
  br label %141

141:                                              ; preds = %140, %103
  br label %142

142:                                              ; preds = %141, %64
  %143 = load i32, i32* %8, align 4
  %144 = call i32 @nodes_empty(i32 %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %162, label %146

146:                                              ; preds = %142
  %147 = load i8*, i8** %7, align 8
  %148 = load i8*, i8** %4, align 8
  %149 = load i32, i32* %5, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8, i8* %148, i64 %150
  %152 = load i8*, i8** %7, align 8
  %153 = ptrtoint i8* %151 to i64
  %154 = ptrtoint i8* %152 to i64
  %155 = sub i64 %153, %154
  %156 = trunc i64 %155 to i32
  %157 = call i32 @nodemask_pr_args(i32* %8)
  %158 = call i32 @scnprintf(i8* %147, i32 %156, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %157)
  %159 = load i8*, i8** %7, align 8
  %160 = sext i32 %158 to i64
  %161 = getelementptr inbounds i8, i8* %159, i64 %160
  store i8* %161, i8** %7, align 8
  br label %162

162:                                              ; preds = %59, %146, %142
  ret void
}

declare dso_local i32 @node_set(i32, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @nodes_empty(i32) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @nodemask_pr_args(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
