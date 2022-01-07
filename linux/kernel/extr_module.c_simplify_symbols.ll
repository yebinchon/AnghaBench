; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_module.c_simplify_symbols.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_module.c_simplify_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i32 }
%struct.load_info = type { i8*, %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32, i32, i64, i32 }
%struct.kernel_symbol = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"__gnu_lto\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Common symbol: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"%s: please compile with -fno-common\0A\00", align 1
@ENOEXEC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Absolute symbol: 0x%08lx\0A\00", align 1
@STB_WEAK = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"%s: Unknown symbol %s (err %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module*, %struct.load_info*)* @simplify_symbols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simplify_symbols(%struct.module* %0, %struct.load_info* %1) #0 {
  %3 = alloca %struct.module*, align 8
  %4 = alloca %struct.load_info*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.kernel_symbol*, align 8
  %11 = alloca i8*, align 8
  store %struct.module* %0, %struct.module** %3, align 8
  store %struct.load_info* %1, %struct.load_info** %4, align 8
  %12 = load %struct.load_info*, %struct.load_info** %4, align 8
  %13 = getelementptr inbounds %struct.load_info, %struct.load_info* %12, i32 0, i32 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = load %struct.load_info*, %struct.load_info** %4, align 8
  %16 = getelementptr inbounds %struct.load_info, %struct.load_info* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i64 %18
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %5, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = bitcast i8* %23 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %24, %struct.TYPE_5__** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 1, i32* %8, align 4
  br label %25

25:                                               ; preds = %163, %2
  %26 = load i32, i32* %8, align 4
  %27 = zext i32 %26 to i64
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = udiv i64 %31, 24
  %33 = icmp ult i64 %27, %32
  br i1 %33, label %34, label %166

34:                                               ; preds = %25
  %35 = load %struct.load_info*, %struct.load_info** %4, align 8
  %36 = getelementptr inbounds %struct.load_info, %struct.load_info* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %39 = load i32, i32* %8, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %37, i64 %44
  store i8* %45, i8** %11, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %47 = load i32, i32* %8, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %124 [
    i32 130, label %52
    i32 131, label %66
    i32 129, label %74
    i32 128, label %75
  ]

52:                                               ; preds = %34
  %53 = load i8*, i8** %11, align 8
  %54 = call i32 @strncmp(i8* %53, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 9)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  br label %162

57:                                               ; preds = %52
  %58 = load i8*, i8** %11, align 8
  %59 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %58)
  %60 = load %struct.module*, %struct.module** %3, align 8
  %61 = getelementptr inbounds %struct.module, %struct.module* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @ENOEXEC, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %9, align 4
  br label %162

66:                                               ; preds = %34
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %68 = load i32, i32* %8, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i64 %72)
  br label %162

74:                                               ; preds = %34
  br label %162

75:                                               ; preds = %34
  %76 = load %struct.module*, %struct.module** %3, align 8
  %77 = load %struct.load_info*, %struct.load_info** %4, align 8
  %78 = load i8*, i8** %11, align 8
  %79 = call %struct.kernel_symbol* @resolve_symbol_wait(%struct.module* %76, %struct.load_info* %77, i8* %78)
  store %struct.kernel_symbol* %79, %struct.kernel_symbol** %10, align 8
  %80 = load %struct.kernel_symbol*, %struct.kernel_symbol** %10, align 8
  %81 = icmp ne %struct.kernel_symbol* %80, null
  br i1 %81, label %82, label %94

82:                                               ; preds = %75
  %83 = load %struct.kernel_symbol*, %struct.kernel_symbol** %10, align 8
  %84 = call i32 @IS_ERR(%struct.kernel_symbol* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %94, label %86

86:                                               ; preds = %82
  %87 = load %struct.kernel_symbol*, %struct.kernel_symbol** %10, align 8
  %88 = call i64 @kernel_symbol_value(%struct.kernel_symbol* %87)
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %90 = load i32, i32* %8, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 2
  store i64 %88, i64* %93, align 8
  br label %162

94:                                               ; preds = %82, %75
  %95 = load %struct.kernel_symbol*, %struct.kernel_symbol** %10, align 8
  %96 = icmp ne %struct.kernel_symbol* %95, null
  br i1 %96, label %108, label %97

97:                                               ; preds = %94
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %99 = load i32, i32* %8, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @ELF_ST_BIND(i32 %103)
  %105 = load i32, i32* @STB_WEAK, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %97
  br label %162

108:                                              ; preds = %97, %94
  %109 = load %struct.kernel_symbol*, %struct.kernel_symbol** %10, align 8
  %110 = call i32 @PTR_ERR(%struct.kernel_symbol* %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  br label %116

113:                                              ; preds = %108
  %114 = load i32, i32* @ENOENT, align 4
  %115 = sub nsw i32 0, %114
  br label %116

116:                                              ; preds = %113, %112
  %117 = phi i32 [ %110, %112 ], [ %115, %113 ]
  store i32 %117, i32* %9, align 4
  %118 = load %struct.module*, %struct.module** %3, align 8
  %119 = getelementptr inbounds %struct.module, %struct.module* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i8*, i8** %11, align 8
  %122 = load i32, i32* %9, align 4
  %123 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %120, i8* %121, i32 %122)
  br label %162

124:                                              ; preds = %34
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %126 = load i32, i32* %8, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.load_info*, %struct.load_info** %4, align 8
  %132 = getelementptr inbounds %struct.load_info, %struct.load_info* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = icmp eq i32 %130, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %124
  %137 = load %struct.module*, %struct.module** %3, align 8
  %138 = call i64 @mod_percpu(%struct.module* %137)
  store i64 %138, i64* %7, align 8
  br label %153

139:                                              ; preds = %124
  %140 = load %struct.load_info*, %struct.load_info** %4, align 8
  %141 = getelementptr inbounds %struct.load_info, %struct.load_info* %140, i32 0, i32 1
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %141, align 8
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %144 = load i32, i32* %8, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  store i64 %152, i64* %7, align 8
  br label %153

153:                                              ; preds = %139, %136
  %154 = load i64, i64* %7, align 8
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %156 = load i32, i32* %8, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = add i64 %160, %154
  store i64 %161, i64* %159, align 8
  br label %162

162:                                              ; preds = %153, %116, %107, %86, %74, %66, %57, %56
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %8, align 4
  %165 = add i32 %164, 1
  store i32 %165, i32* %8, align 4
  br label %25

166:                                              ; preds = %25
  %167 = load i32, i32* %9, align 4
  ret i32 %167
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @pr_warn(i8*, i32, ...) #1

declare dso_local %struct.kernel_symbol* @resolve_symbol_wait(%struct.module*, %struct.load_info*, i8*) #1

declare dso_local i32 @IS_ERR(%struct.kernel_symbol*) #1

declare dso_local i64 @kernel_symbol_value(%struct.kernel_symbol*) #1

declare dso_local i32 @ELF_ST_BIND(i32) #1

declare dso_local i32 @PTR_ERR(%struct.kernel_symbol*) #1

declare dso_local i64 @mod_percpu(%struct.module*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
