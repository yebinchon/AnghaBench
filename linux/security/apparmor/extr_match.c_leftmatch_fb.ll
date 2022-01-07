; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_match.c_leftmatch_fb.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_match.c_leftmatch_fb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_dfa = type { i64* }
%struct.match_workbuf = type { i32*, i64 }

@YYTD_ID_EC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aa_dfa*, i32, i8*, %struct.match_workbuf*, i32*)* @leftmatch_fb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @leftmatch_fb(%struct.aa_dfa* %0, i32 %1, i8* %2, %struct.match_workbuf* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.aa_dfa*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.match_workbuf*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.aa_dfa* %0, %struct.aa_dfa** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store %struct.match_workbuf* %3, %struct.match_workbuf** %10, align 8
  store i32* %4, i32** %11, align 8
  %21 = load %struct.aa_dfa*, %struct.aa_dfa** %7, align 8
  %22 = call i32* @DEFAULT_TABLE(%struct.aa_dfa* %21)
  store i32* %22, i32** %12, align 8
  %23 = load %struct.aa_dfa*, %struct.aa_dfa** %7, align 8
  %24 = call i32* @BASE_TABLE(%struct.aa_dfa* %23)
  store i32* %24, i32** %13, align 8
  %25 = load %struct.aa_dfa*, %struct.aa_dfa** %7, align 8
  %26 = call i32* @NEXT_TABLE(%struct.aa_dfa* %25)
  store i32* %26, i32** %14, align 8
  %27 = load %struct.aa_dfa*, %struct.aa_dfa** %7, align 8
  %28 = call i32* @CHECK_TABLE(%struct.aa_dfa* %27)
  store i32* %28, i32** %15, align 8
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %16, align 4
  %30 = load %struct.aa_dfa*, %struct.aa_dfa** %7, align 8
  %31 = icmp ne %struct.aa_dfa* %30, null
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @AA_BUG(i32 %33)
  %35 = load i8*, i8** %9, align 8
  %36 = icmp ne i8* %35, null
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @AA_BUG(i32 %38)
  %40 = load %struct.match_workbuf*, %struct.match_workbuf** %10, align 8
  %41 = icmp ne %struct.match_workbuf* %40, null
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 @AA_BUG(i32 %43)
  %45 = load i32*, i32** %11, align 8
  %46 = icmp ne i32* %45, null
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i32 @AA_BUG(i32 %48)
  %50 = load i32*, i32** %11, align 8
  store i32 0, i32* %50, align 4
  %51 = load i32, i32* %16, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %207

54:                                               ; preds = %5
  %55 = load %struct.aa_dfa*, %struct.aa_dfa** %7, align 8
  %56 = getelementptr inbounds %struct.aa_dfa, %struct.aa_dfa* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* @YYTD_ID_EC, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %133

62:                                               ; preds = %54
  %63 = load %struct.aa_dfa*, %struct.aa_dfa** %7, align 8
  %64 = call i64* @EQUIV_TABLE(%struct.aa_dfa* %63)
  store i64* %64, i64** %18, align 8
  br label %65

65:                                               ; preds = %126, %62
  %66 = load i8*, i8** %9, align 8
  %67 = load i8, i8* %66, align 1
  %68 = icmp ne i8 %67, 0
  br i1 %68, label %69, label %132

69:                                               ; preds = %65
  %70 = load i32, i32* %16, align 4
  %71 = load %struct.match_workbuf*, %struct.match_workbuf** %10, align 8
  %72 = getelementptr inbounds %struct.match_workbuf, %struct.match_workbuf* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.match_workbuf*, %struct.match_workbuf** %10, align 8
  %75 = getelementptr inbounds %struct.match_workbuf, %struct.match_workbuf* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  store i32 %70, i32* %77, align 4
  %78 = load i32*, i32** %13, align 8
  %79 = load i32, i32* %16, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @base_idx(i32 %82)
  %84 = load i64*, i64** %18, align 8
  %85 = load i8*, i8** %9, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %9, align 8
  %87 = load i8, i8* %85, align 1
  %88 = sext i8 %87 to i64
  %89 = getelementptr inbounds i64, i64* %84, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = add i64 %83, %90
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %17, align 4
  %93 = load i32*, i32** %15, align 8
  %94 = load i32, i32* %17, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %16, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %69
  %101 = load i32*, i32** %14, align 8
  %102 = load i32, i32* %17, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %16, align 4
  br label %112

106:                                              ; preds = %69
  %107 = load i32*, i32** %12, align 8
  %108 = load i32, i32* %16, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %16, align 4
  br label %112

112:                                              ; preds = %106, %100
  %113 = load %struct.match_workbuf*, %struct.match_workbuf** %10, align 8
  %114 = load i32, i32* %16, align 4
  %115 = call i64 @is_loop(%struct.match_workbuf* %113, i32 %114, i32* %19)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %112
  %118 = load %struct.aa_dfa*, %struct.aa_dfa** %7, align 8
  %119 = load i32, i32* %16, align 4
  %120 = load i8*, i8** %9, align 8
  %121 = call i32 @aa_dfa_match(%struct.aa_dfa* %118, i32 %119, i8* %120)
  store i32 %121, i32* %16, align 4
  %122 = load i32, i32* %19, align 4
  %123 = load i32*, i32** %11, align 8
  %124 = load i32, i32* %123, align 4
  %125 = sub i32 %124, %122
  store i32 %125, i32* %123, align 4
  br label %200

126:                                              ; preds = %112
  %127 = load %struct.match_workbuf*, %struct.match_workbuf** %10, align 8
  %128 = call i32 @inc_wb_pos(%struct.match_workbuf* %127)
  %129 = load i32*, i32** %11, align 8
  %130 = load i32, i32* %129, align 4
  %131 = add i32 %130, 1
  store i32 %131, i32* %129, align 4
  br label %65

132:                                              ; preds = %65
  br label %199

133:                                              ; preds = %54
  br label %134

134:                                              ; preds = %192, %133
  %135 = load i8*, i8** %9, align 8
  %136 = load i8, i8* %135, align 1
  %137 = icmp ne i8 %136, 0
  br i1 %137, label %138, label %198

138:                                              ; preds = %134
  %139 = load i32, i32* %16, align 4
  %140 = load %struct.match_workbuf*, %struct.match_workbuf** %10, align 8
  %141 = getelementptr inbounds %struct.match_workbuf, %struct.match_workbuf* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = load %struct.match_workbuf*, %struct.match_workbuf** %10, align 8
  %144 = getelementptr inbounds %struct.match_workbuf, %struct.match_workbuf* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = getelementptr inbounds i32, i32* %142, i64 %145
  store i32 %139, i32* %146, align 4
  %147 = load i32*, i32** %13, align 8
  %148 = load i32, i32* %16, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = call i64 @base_idx(i32 %151)
  %153 = load i8*, i8** %9, align 8
  %154 = getelementptr inbounds i8, i8* %153, i32 1
  store i8* %154, i8** %9, align 8
  %155 = load i8, i8* %153, align 1
  %156 = sext i8 %155 to i64
  %157 = add i64 %152, %156
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %17, align 4
  %159 = load i32*, i32** %15, align 8
  %160 = load i32, i32* %17, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %16, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %172

166:                                              ; preds = %138
  %167 = load i32*, i32** %14, align 8
  %168 = load i32, i32* %17, align 4
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  store i32 %171, i32* %16, align 4
  br label %178

172:                                              ; preds = %138
  %173 = load i32*, i32** %12, align 8
  %174 = load i32, i32* %16, align 4
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  store i32 %177, i32* %16, align 4
  br label %178

178:                                              ; preds = %172, %166
  %179 = load %struct.match_workbuf*, %struct.match_workbuf** %10, align 8
  %180 = load i32, i32* %16, align 4
  %181 = call i64 @is_loop(%struct.match_workbuf* %179, i32 %180, i32* %20)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %192

183:                                              ; preds = %178
  %184 = load %struct.aa_dfa*, %struct.aa_dfa** %7, align 8
  %185 = load i32, i32* %16, align 4
  %186 = load i8*, i8** %9, align 8
  %187 = call i32 @aa_dfa_match(%struct.aa_dfa* %184, i32 %185, i8* %186)
  store i32 %187, i32* %16, align 4
  %188 = load i32, i32* %20, align 4
  %189 = load i32*, i32** %11, align 8
  %190 = load i32, i32* %189, align 4
  %191 = sub i32 %190, %188
  store i32 %191, i32* %189, align 4
  br label %200

192:                                              ; preds = %178
  %193 = load %struct.match_workbuf*, %struct.match_workbuf** %10, align 8
  %194 = call i32 @inc_wb_pos(%struct.match_workbuf* %193)
  %195 = load i32*, i32** %11, align 8
  %196 = load i32, i32* %195, align 4
  %197 = add i32 %196, 1
  store i32 %197, i32* %195, align 4
  br label %134

198:                                              ; preds = %134
  br label %199

199:                                              ; preds = %198, %132
  br label %200

200:                                              ; preds = %199, %183, %117
  %201 = load i32, i32* %16, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %205, label %203

203:                                              ; preds = %200
  %204 = load i32*, i32** %11, align 8
  store i32 0, i32* %204, align 4
  br label %205

205:                                              ; preds = %203, %200
  %206 = load i32, i32* %16, align 4
  store i32 %206, i32* %6, align 4
  br label %207

207:                                              ; preds = %205, %53
  %208 = load i32, i32* %6, align 4
  ret i32 %208
}

declare dso_local i32* @DEFAULT_TABLE(%struct.aa_dfa*) #1

declare dso_local i32* @BASE_TABLE(%struct.aa_dfa*) #1

declare dso_local i32* @NEXT_TABLE(%struct.aa_dfa*) #1

declare dso_local i32* @CHECK_TABLE(%struct.aa_dfa*) #1

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local i64* @EQUIV_TABLE(%struct.aa_dfa*) #1

declare dso_local i64 @base_idx(i32) #1

declare dso_local i64 @is_loop(%struct.match_workbuf*, i32, i32*) #1

declare dso_local i32 @aa_dfa_match(%struct.aa_dfa*, i32, i8*) #1

declare dso_local i32 @inc_wb_pos(%struct.match_workbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
