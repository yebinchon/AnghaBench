; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_strfilter.c_strfilter_node__new.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_strfilter.c_strfilter_node__new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strfilter_node = type { %struct.strfilter_node*, i32 }

@OP_and = common dso_local global i32* null, align 8
@OP_or = common dso_local global i32* null, align 8
@OP_not = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.strfilter_node* (i8*, i8**)* @strfilter_node__new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.strfilter_node* @strfilter_node__new(i8* %0, i8** %1) #0 {
  %3 = alloca %struct.strfilter_node*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.strfilter_node, align 8
  %7 = alloca %struct.strfilter_node*, align 8
  %8 = alloca %struct.strfilter_node*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.strfilter_node* null, %struct.strfilter_node** %3, align 8
  br label %190

13:                                               ; preds = %2
  %14 = call i32 @memset(%struct.strfilter_node* %6, i32 0, i32 16)
  store %struct.strfilter_node* %6, %struct.strfilter_node** %7, align 8
  store %struct.strfilter_node* %6, %struct.strfilter_node** %8, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i8* @get_token(i8* %15, i8** %9)
  store i8* %16, i8** %4, align 8
  br label %17

17:                                               ; preds = %169, %13
  %18 = load i8*, i8** %4, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load i8*, i8** %4, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 41
  br label %27

27:                                               ; preds = %22, %17
  %28 = phi i1 [ false, %17 ], [ %26, %22 ]
  br i1 %28, label %29, label %172

29:                                               ; preds = %27
  %30 = load i8*, i8** %4, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  switch i32 %32, label %132 [
    i32 38, label %33
    i32 124, label %59
    i32 33, label %82
    i32 40, label %103
  ]

33:                                               ; preds = %29
  %34 = load %struct.strfilter_node*, %struct.strfilter_node** %7, align 8
  %35 = getelementptr inbounds %struct.strfilter_node, %struct.strfilter_node* %34, i32 0, i32 0
  %36 = load %struct.strfilter_node*, %struct.strfilter_node** %35, align 8
  %37 = icmp ne %struct.strfilter_node* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.strfilter_node*, %struct.strfilter_node** %8, align 8
  %40 = getelementptr inbounds %struct.strfilter_node, %struct.strfilter_node* %39, i32 0, i32 0
  %41 = load %struct.strfilter_node*, %struct.strfilter_node** %40, align 8
  %42 = icmp ne %struct.strfilter_node* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %38, %33
  br label %184

44:                                               ; preds = %38
  %45 = load i32*, i32** @OP_and, align 8
  %46 = load %struct.strfilter_node*, %struct.strfilter_node** %8, align 8
  %47 = getelementptr inbounds %struct.strfilter_node, %struct.strfilter_node* %46, i32 0, i32 0
  %48 = load %struct.strfilter_node*, %struct.strfilter_node** %47, align 8
  %49 = call i8* @strfilter_node__alloc(i32* %45, %struct.strfilter_node* %48, i32* null)
  %50 = bitcast i8* %49 to %struct.strfilter_node*
  store %struct.strfilter_node* %50, %struct.strfilter_node** %7, align 8
  %51 = load %struct.strfilter_node*, %struct.strfilter_node** %7, align 8
  %52 = icmp ne %struct.strfilter_node* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %44
  br label %183

54:                                               ; preds = %44
  %55 = load %struct.strfilter_node*, %struct.strfilter_node** %7, align 8
  %56 = load %struct.strfilter_node*, %struct.strfilter_node** %8, align 8
  %57 = getelementptr inbounds %struct.strfilter_node, %struct.strfilter_node* %56, i32 0, i32 0
  store %struct.strfilter_node* %55, %struct.strfilter_node** %57, align 8
  %58 = load %struct.strfilter_node*, %struct.strfilter_node** %7, align 8
  store %struct.strfilter_node* %58, %struct.strfilter_node** %8, align 8
  br label %169

59:                                               ; preds = %29
  %60 = load %struct.strfilter_node*, %struct.strfilter_node** %7, align 8
  %61 = getelementptr inbounds %struct.strfilter_node, %struct.strfilter_node* %60, i32 0, i32 0
  %62 = load %struct.strfilter_node*, %struct.strfilter_node** %61, align 8
  %63 = icmp ne %struct.strfilter_node* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.strfilter_node, %struct.strfilter_node* %6, i32 0, i32 0
  %66 = load %struct.strfilter_node*, %struct.strfilter_node** %65, align 8
  %67 = icmp ne %struct.strfilter_node* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %64, %59
  br label %184

69:                                               ; preds = %64
  %70 = load i32*, i32** @OP_or, align 8
  %71 = getelementptr inbounds %struct.strfilter_node, %struct.strfilter_node* %6, i32 0, i32 0
  %72 = load %struct.strfilter_node*, %struct.strfilter_node** %71, align 8
  %73 = call i8* @strfilter_node__alloc(i32* %70, %struct.strfilter_node* %72, i32* null)
  %74 = bitcast i8* %73 to %struct.strfilter_node*
  store %struct.strfilter_node* %74, %struct.strfilter_node** %7, align 8
  %75 = load %struct.strfilter_node*, %struct.strfilter_node** %7, align 8
  %76 = icmp ne %struct.strfilter_node* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %69
  br label %183

78:                                               ; preds = %69
  %79 = load %struct.strfilter_node*, %struct.strfilter_node** %7, align 8
  %80 = getelementptr inbounds %struct.strfilter_node, %struct.strfilter_node* %6, i32 0, i32 0
  store %struct.strfilter_node* %79, %struct.strfilter_node** %80, align 8
  %81 = load %struct.strfilter_node*, %struct.strfilter_node** %7, align 8
  store %struct.strfilter_node* %81, %struct.strfilter_node** %8, align 8
  br label %169

82:                                               ; preds = %29
  %83 = load %struct.strfilter_node*, %struct.strfilter_node** %7, align 8
  %84 = getelementptr inbounds %struct.strfilter_node, %struct.strfilter_node* %83, i32 0, i32 0
  %85 = load %struct.strfilter_node*, %struct.strfilter_node** %84, align 8
  %86 = icmp ne %struct.strfilter_node* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %184

88:                                               ; preds = %82
  %89 = load i32*, i32** @OP_not, align 8
  %90 = call i8* @strfilter_node__alloc(i32* %89, %struct.strfilter_node* null, i32* null)
  %91 = bitcast i8* %90 to %struct.strfilter_node*
  %92 = load %struct.strfilter_node*, %struct.strfilter_node** %7, align 8
  %93 = getelementptr inbounds %struct.strfilter_node, %struct.strfilter_node* %92, i32 0, i32 0
  store %struct.strfilter_node* %91, %struct.strfilter_node** %93, align 8
  %94 = load %struct.strfilter_node*, %struct.strfilter_node** %7, align 8
  %95 = getelementptr inbounds %struct.strfilter_node, %struct.strfilter_node* %94, i32 0, i32 0
  %96 = load %struct.strfilter_node*, %struct.strfilter_node** %95, align 8
  %97 = icmp ne %struct.strfilter_node* %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %88
  br label %183

99:                                               ; preds = %88
  %100 = load %struct.strfilter_node*, %struct.strfilter_node** %7, align 8
  %101 = getelementptr inbounds %struct.strfilter_node, %struct.strfilter_node* %100, i32 0, i32 0
  %102 = load %struct.strfilter_node*, %struct.strfilter_node** %101, align 8
  store %struct.strfilter_node* %102, %struct.strfilter_node** %7, align 8
  br label %169

103:                                              ; preds = %29
  %104 = load %struct.strfilter_node*, %struct.strfilter_node** %7, align 8
  %105 = getelementptr inbounds %struct.strfilter_node, %struct.strfilter_node* %104, i32 0, i32 0
  %106 = load %struct.strfilter_node*, %struct.strfilter_node** %105, align 8
  %107 = icmp ne %struct.strfilter_node* %106, null
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  br label %184

109:                                              ; preds = %103
  %110 = load i8*, i8** %4, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 1
  %112 = call %struct.strfilter_node* @strfilter_node__new(i8* %111, i8** %4)
  %113 = load %struct.strfilter_node*, %struct.strfilter_node** %7, align 8
  %114 = getelementptr inbounds %struct.strfilter_node, %struct.strfilter_node* %113, i32 0, i32 0
  store %struct.strfilter_node* %112, %struct.strfilter_node** %114, align 8
  %115 = load i8*, i8** %4, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %118, label %117

117:                                              ; preds = %109
  br label %183

118:                                              ; preds = %109
  %119 = load %struct.strfilter_node*, %struct.strfilter_node** %7, align 8
  %120 = getelementptr inbounds %struct.strfilter_node, %struct.strfilter_node* %119, i32 0, i32 0
  %121 = load %struct.strfilter_node*, %struct.strfilter_node** %120, align 8
  %122 = icmp ne %struct.strfilter_node* %121, null
  br i1 %122, label %123, label %128

123:                                              ; preds = %118
  %124 = load i8*, i8** %4, align 8
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp ne i32 %126, 41
  br i1 %127, label %128, label %129

128:                                              ; preds = %123, %118
  br label %184

129:                                              ; preds = %123
  %130 = load i8*, i8** %4, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 1
  store i8* %131, i8** %9, align 8
  br label %169

132:                                              ; preds = %29
  %133 = load %struct.strfilter_node*, %struct.strfilter_node** %7, align 8
  %134 = getelementptr inbounds %struct.strfilter_node, %struct.strfilter_node* %133, i32 0, i32 0
  %135 = load %struct.strfilter_node*, %struct.strfilter_node** %134, align 8
  %136 = icmp ne %struct.strfilter_node* %135, null
  br i1 %136, label %137, label %138

137:                                              ; preds = %132
  br label %184

138:                                              ; preds = %132
  %139 = call i8* @strfilter_node__alloc(i32* null, %struct.strfilter_node* null, i32* null)
  %140 = bitcast i8* %139 to %struct.strfilter_node*
  %141 = load %struct.strfilter_node*, %struct.strfilter_node** %7, align 8
  %142 = getelementptr inbounds %struct.strfilter_node, %struct.strfilter_node* %141, i32 0, i32 0
  store %struct.strfilter_node* %140, %struct.strfilter_node** %142, align 8
  %143 = load %struct.strfilter_node*, %struct.strfilter_node** %7, align 8
  %144 = getelementptr inbounds %struct.strfilter_node, %struct.strfilter_node* %143, i32 0, i32 0
  %145 = load %struct.strfilter_node*, %struct.strfilter_node** %144, align 8
  %146 = icmp ne %struct.strfilter_node* %145, null
  br i1 %146, label %148, label %147

147:                                              ; preds = %138
  br label %183

148:                                              ; preds = %138
  %149 = load i8*, i8** %4, align 8
  %150 = load i8*, i8** %9, align 8
  %151 = load i8*, i8** %4, align 8
  %152 = ptrtoint i8* %150 to i64
  %153 = ptrtoint i8* %151 to i64
  %154 = sub i64 %152, %153
  %155 = trunc i64 %154 to i32
  %156 = call i32 @strndup(i8* %149, i32 %155)
  %157 = load %struct.strfilter_node*, %struct.strfilter_node** %7, align 8
  %158 = getelementptr inbounds %struct.strfilter_node, %struct.strfilter_node* %157, i32 0, i32 0
  %159 = load %struct.strfilter_node*, %struct.strfilter_node** %158, align 8
  %160 = getelementptr inbounds %struct.strfilter_node, %struct.strfilter_node* %159, i32 0, i32 1
  store i32 %156, i32* %160, align 8
  %161 = load %struct.strfilter_node*, %struct.strfilter_node** %7, align 8
  %162 = getelementptr inbounds %struct.strfilter_node, %struct.strfilter_node* %161, i32 0, i32 0
  %163 = load %struct.strfilter_node*, %struct.strfilter_node** %162, align 8
  %164 = getelementptr inbounds %struct.strfilter_node, %struct.strfilter_node* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %168, label %167

167:                                              ; preds = %148
  br label %183

168:                                              ; preds = %148
  br label %169

169:                                              ; preds = %168, %129, %99, %78, %54
  %170 = load i8*, i8** %9, align 8
  %171 = call i8* @get_token(i8* %170, i8** %9)
  store i8* %171, i8** %4, align 8
  br label %17

172:                                              ; preds = %27
  %173 = load %struct.strfilter_node*, %struct.strfilter_node** %7, align 8
  %174 = getelementptr inbounds %struct.strfilter_node, %struct.strfilter_node* %173, i32 0, i32 0
  %175 = load %struct.strfilter_node*, %struct.strfilter_node** %174, align 8
  %176 = icmp ne %struct.strfilter_node* %175, null
  br i1 %176, label %178, label %177

177:                                              ; preds = %172
  br label %184

178:                                              ; preds = %172
  %179 = load i8*, i8** %4, align 8
  %180 = load i8**, i8*** %5, align 8
  store i8* %179, i8** %180, align 8
  %181 = getelementptr inbounds %struct.strfilter_node, %struct.strfilter_node* %6, i32 0, i32 0
  %182 = load %struct.strfilter_node*, %struct.strfilter_node** %181, align 8
  store %struct.strfilter_node* %182, %struct.strfilter_node** %3, align 8
  br label %190

183:                                              ; preds = %167, %147, %117, %98, %77, %53
  store i8* null, i8** %4, align 8
  br label %184

184:                                              ; preds = %183, %177, %137, %128, %108, %87, %68, %43
  %185 = load i8*, i8** %4, align 8
  %186 = load i8**, i8*** %5, align 8
  store i8* %185, i8** %186, align 8
  %187 = getelementptr inbounds %struct.strfilter_node, %struct.strfilter_node* %6, i32 0, i32 0
  %188 = load %struct.strfilter_node*, %struct.strfilter_node** %187, align 8
  %189 = call i32 @strfilter_node__delete(%struct.strfilter_node* %188)
  store %struct.strfilter_node* null, %struct.strfilter_node** %3, align 8
  br label %190

190:                                              ; preds = %184, %178, %12
  %191 = load %struct.strfilter_node*, %struct.strfilter_node** %3, align 8
  ret %struct.strfilter_node* %191
}

declare dso_local i32 @memset(%struct.strfilter_node*, i32, i32) #1

declare dso_local i8* @get_token(i8*, i8**) #1

declare dso_local i8* @strfilter_node__alloc(i32*, %struct.strfilter_node*, i32*) #1

declare dso_local i32 @strndup(i8*, i32) #1

declare dso_local i32 @strfilter_node__delete(%struct.strfilter_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
