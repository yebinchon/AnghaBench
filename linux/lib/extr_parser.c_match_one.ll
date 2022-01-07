; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_parser.c_match_one.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_parser.c_match_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8* }

@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.TYPE_3__*)* @match_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_one(i8* %0, i8* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  store i32 0, i32* %9, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %173

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %15, %68, %164
  store i32 -1, i32* %10, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = call i8* @strchr(i8* %17, i8 signext 37)
  store i8* %18, i8** %8, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %16
  %22 = load i8*, i8** %6, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i64 @strcmp(i8* %22, i8* %23)
  %25 = icmp eq i64 %24, 0
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %4, align 4
  br label %173

27:                                               ; preds = %16
  %28 = load i8*, i8** %6, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = ptrtoint i8* %30 to i64
  %33 = ptrtoint i8* %31 to i64
  %34 = sub i64 %32, %33
  %35 = trunc i64 %34 to i32
  %36 = call i64 @strncmp(i8* %28, i8* %29, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %173

39:                                               ; preds = %27
  %40 = load i8*, i8** %8, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = ptrtoint i8* %40 to i64
  %43 = ptrtoint i8* %41 to i64
  %44 = sub i64 %42, %43
  %45 = load i8*, i8** %5, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 %44
  store i8* %46, i8** %5, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  store i8* %48, i8** %6, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = load i8, i8* %49, align 1
  %51 = call i64 @isdigit(i8 signext %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %39
  %54 = load i8*, i8** %6, align 8
  %55 = call i32 @simple_strtoul(i8* %54, i8** %6, i32 10)
  store i32 %55, i32* %10, align 4
  br label %72

56:                                               ; preds = %39
  %57 = load i8*, i8** %6, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 37
  br i1 %60, label %61, label %71

61:                                               ; preds = %56
  %62 = load i8*, i8** %5, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %5, align 8
  %64 = load i8, i8* %62, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 37
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  store i32 0, i32* %4, align 4
  br label %173

68:                                               ; preds = %61
  %69 = load i8*, i8** %6, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %6, align 8
  br label %16

71:                                               ; preds = %56
  br label %72

72:                                               ; preds = %71, %53
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @MAX_OPT_ARGS, align 4
  %75 = icmp sge i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  store i32 0, i32* %4, align 4
  br label %173

77:                                               ; preds = %72
  %78 = load i8*, i8** %5, align 8
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  store i8* %78, i8** %83, align 8
  %84 = load i8*, i8** %6, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %6, align 8
  %86 = load i8, i8* %84, align 1
  %87 = sext i8 %86 to i32
  switch i32 %87, label %163 [
    i32 115, label %88
    i32 100, label %115
    i32 117, label %123
    i32 111, label %131
    i32 120, label %139
  ]

88:                                               ; preds = %77
  %89 = load i8*, i8** %5, align 8
  %90 = call i64 @strlen(i8* %89)
  store i64 %90, i64* %11, align 8
  %91 = load i64, i64* %11, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  store i32 0, i32* %4, align 4
  br label %173

94:                                               ; preds = %88
  %95 = load i32, i32* %10, align 4
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %102, label %97

97:                                               ; preds = %94
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = load i64, i64* %11, align 8
  %101 = icmp ugt i64 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %97, %94
  %103 = load i64, i64* %11, align 8
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %10, align 4
  br label %105

105:                                              ; preds = %102, %97
  %106 = load i8*, i8** %5, align 8
  %107 = load i32, i32* %10, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %111 = load i32, i32* %9, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  store i8* %109, i8** %114, align 8
  br label %164

115:                                              ; preds = %77
  %116 = load i8*, i8** %5, align 8
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 1
  %122 = call i32 @simple_strtol(i8* %116, i8** %121, i32 0)
  br label %147

123:                                              ; preds = %77
  %124 = load i8*, i8** %5, align 8
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %126 = load i32, i32* %9, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 1
  %130 = call i32 @simple_strtoul(i8* %124, i8** %129, i32 0)
  br label %147

131:                                              ; preds = %77
  %132 = load i8*, i8** %5, align 8
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %134 = load i32, i32* %9, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 1
  %138 = call i32 @simple_strtoul(i8* %132, i8** %137, i32 8)
  br label %147

139:                                              ; preds = %77
  %140 = load i8*, i8** %5, align 8
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %142 = load i32, i32* %9, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 1
  %146 = call i32 @simple_strtoul(i8* %140, i8** %145, i32 16)
  br label %147

147:                                              ; preds = %139, %131, %123, %115
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %149 = load i32, i32* %9, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 1
  %153 = load i8*, i8** %152, align 8
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %155 = load i32, i32* %9, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 0
  %159 = load i8*, i8** %158, align 8
  %160 = icmp eq i8* %153, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %147
  store i32 0, i32* %4, align 4
  br label %173

162:                                              ; preds = %147
  br label %164

163:                                              ; preds = %77
  store i32 0, i32* %4, align 4
  br label %173

164:                                              ; preds = %162, %105
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %166 = load i32, i32* %9, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 1
  %170 = load i8*, i8** %169, align 8
  store i8* %170, i8** %5, align 8
  %171 = load i32, i32* %9, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %9, align 4
  br label %16

173:                                              ; preds = %163, %161, %93, %76, %67, %38, %21, %14
  %174 = load i32, i32* %4, align 4
  ret i32 %174
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @simple_strtol(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
