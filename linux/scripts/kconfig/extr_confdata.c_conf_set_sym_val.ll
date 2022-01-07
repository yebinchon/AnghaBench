; ModuleID = '/home/carl/AnghaBench/linux/scripts/kconfig/extr_confdata.c_conf_set_sym_val.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/kconfig/extr_confdata.c_conf_set_sym_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@mod = common dso_local global i32 0, align 4
@yes = common dso_local global i32 0, align 4
@no = common dso_local global i32 0, align 4
@S_DEF_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"symbol value '%s' invalid for %s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\22\\\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"invalid string found\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.symbol*, i32, i32, i8*)* @conf_set_sym_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @conf_set_sym_val(%struct.symbol* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.symbol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.symbol* %0, %struct.symbol** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load %struct.symbol*, %struct.symbol** %6, align 8
  %12 = getelementptr inbounds %struct.symbol, %struct.symbol* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %159 [
    i32 128, label %14
    i32 132, label %35
    i32 129, label %86
    i32 130, label %127
    i32 131, label %127
  ]

14:                                               ; preds = %4
  %15 = load i8*, i8** %9, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 109
  br i1 %19, label %20, label %34

20:                                               ; preds = %14
  %21 = load i32, i32* @mod, align 4
  %22 = load %struct.symbol*, %struct.symbol** %6, align 8
  %23 = getelementptr inbounds %struct.symbol, %struct.symbol* %22, i32 0, i32 3
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i32 %21, i32* %28, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.symbol*, %struct.symbol** %6, align 8
  %31 = getelementptr inbounds %struct.symbol, %struct.symbol* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %160

34:                                               ; preds = %14
  br label %35

35:                                               ; preds = %4, %34
  %36 = load i8*, i8** %9, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 121
  br i1 %40, label %41, label %55

41:                                               ; preds = %35
  %42 = load i32, i32* @yes, align 4
  %43 = load %struct.symbol*, %struct.symbol** %6, align 8
  %44 = getelementptr inbounds %struct.symbol, %struct.symbol* %43, i32 0, i32 3
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i32 %42, i32* %49, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.symbol*, %struct.symbol** %6, align 8
  %52 = getelementptr inbounds %struct.symbol, %struct.symbol* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %160

55:                                               ; preds = %35
  %56 = load i8*, i8** %9, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 110
  br i1 %60, label %61, label %75

61:                                               ; preds = %55
  %62 = load i32, i32* @no, align 4
  %63 = load %struct.symbol*, %struct.symbol** %6, align 8
  %64 = getelementptr inbounds %struct.symbol, %struct.symbol* %63, i32 0, i32 3
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  store i32 %62, i32* %69, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.symbol*, %struct.symbol** %6, align 8
  %72 = getelementptr inbounds %struct.symbol, %struct.symbol* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %160

75:                                               ; preds = %55
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @S_DEF_AUTO, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = load i8*, i8** %9, align 8
  %81 = load %struct.symbol*, %struct.symbol** %6, align 8
  %82 = getelementptr inbounds %struct.symbol, %struct.symbol* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 (i8*, ...) @conf_warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %80, i32 %83)
  br label %85

85:                                               ; preds = %79, %75
  store i32 1, i32* %5, align 4
  br label %161

86:                                               ; preds = %4
  %87 = load i8*, i8** %9, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %9, align 8
  %89 = load i8, i8* %87, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp ne i32 %90, 34
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  br label %160

93:                                               ; preds = %86
  %94 = load i8*, i8** %9, align 8
  store i8* %94, i8** %10, align 8
  br label %95

95:                                               ; preds = %113, %93
  %96 = load i8*, i8** %10, align 8
  %97 = call i8* @strpbrk(i8* %96, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %97, i8** %10, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %116

99:                                               ; preds = %95
  %100 = load i8*, i8** %10, align 8
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 34
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = load i8*, i8** %10, align 8
  store i8 0, i8* %105, align 1
  br label %116

106:                                              ; preds = %99
  %107 = load i8*, i8** %10, align 8
  %108 = load i8*, i8** %10, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 1
  %110 = load i8*, i8** %10, align 8
  %111 = call i32 @strlen(i8* %110)
  %112 = call i32 @memmove(i8* %107, i8* %109, i32 %111)
  br label %113

113:                                              ; preds = %106
  %114 = load i8*, i8** %10, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %10, align 8
  br label %95

116:                                              ; preds = %104, %95
  %117 = load i8*, i8** %10, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %126, label %119

119:                                              ; preds = %116
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* @S_DEF_AUTO, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %119
  %124 = call i32 (i8*, ...) @conf_warning(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %125

125:                                              ; preds = %123, %119
  store i32 1, i32* %5, align 4
  br label %161

126:                                              ; preds = %116
  br label %127

127:                                              ; preds = %4, %4, %126
  %128 = load %struct.symbol*, %struct.symbol** %6, align 8
  %129 = load i8*, i8** %9, align 8
  %130 = call i32 @sym_string_valid(%struct.symbol* %128, i8* %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %147

132:                                              ; preds = %127
  %133 = load i8*, i8** %9, align 8
  %134 = call i32 @xstrdup(i8* %133)
  %135 = load %struct.symbol*, %struct.symbol** %6, align 8
  %136 = getelementptr inbounds %struct.symbol, %struct.symbol* %135, i32 0, i32 3
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** %136, align 8
  %138 = load i32, i32* %7, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  store i32 %134, i32* %141, align 4
  %142 = load i32, i32* %8, align 4
  %143 = load %struct.symbol*, %struct.symbol** %6, align 8
  %144 = getelementptr inbounds %struct.symbol, %struct.symbol* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = or i32 %145, %142
  store i32 %146, i32* %144, align 4
  br label %158

147:                                              ; preds = %127
  %148 = load i32, i32* %7, align 4
  %149 = load i32, i32* @S_DEF_AUTO, align 4
  %150 = icmp ne i32 %148, %149
  br i1 %150, label %151, label %157

151:                                              ; preds = %147
  %152 = load i8*, i8** %9, align 8
  %153 = load %struct.symbol*, %struct.symbol** %6, align 8
  %154 = getelementptr inbounds %struct.symbol, %struct.symbol* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = call i32 (i8*, ...) @conf_warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %152, i32 %155)
  br label %157

157:                                              ; preds = %151, %147
  store i32 1, i32* %5, align 4
  br label %161

158:                                              ; preds = %132
  br label %160

159:                                              ; preds = %4
  br label %160

160:                                              ; preds = %159, %158, %92, %61, %41, %20
  store i32 0, i32* %5, align 4
  br label %161

161:                                              ; preds = %160, %157, %125, %85
  %162 = load i32, i32* %5, align 4
  ret i32 %162
}

declare dso_local i32 @conf_warning(i8*, ...) #1

declare dso_local i8* @strpbrk(i8*, i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sym_string_valid(%struct.symbol*, i8*) #1

declare dso_local i32 @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
