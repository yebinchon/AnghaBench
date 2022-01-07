; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_match.c_aa_dfa_unpack.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_match.c_aa_dfa_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_dfa = type { i64, %struct.table_header**, i32 }
%struct.table_header = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@YYTH_MAGIC = common dso_local global i32 0, align 4
@YYTH_FLAG_DIFF_ENCODE = common dso_local global i64 0, align 8
@YYTD_DATA32 = common dso_local global i32 0, align 4
@YYTD_DATA16 = common dso_local global i32 0, align 4
@YYTD_DATA8 = common dso_local global i32 0, align 4
@DFA_FLAG_VERIFY_STATES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.aa_dfa* @aa_dfa_unpack(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.aa_dfa*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.table_header*, align 8
  %12 = alloca %struct.aa_dfa*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %9, align 4
  %15 = load i8*, i8** %5, align 8
  store i8* %15, i8** %10, align 8
  store %struct.table_header* null, %struct.table_header** %11, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.aa_dfa* @kzalloc(i32 24, i32 %16)
  store %struct.aa_dfa* %17, %struct.aa_dfa** %12, align 8
  %18 = load %struct.aa_dfa*, %struct.aa_dfa** %12, align 8
  %19 = icmp ne %struct.aa_dfa* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  br label %199

21:                                               ; preds = %3
  %22 = load %struct.aa_dfa*, %struct.aa_dfa** %12, align 8
  %23 = getelementptr inbounds %struct.aa_dfa, %struct.aa_dfa* %22, i32 0, i32 2
  %24 = call i32 @kref_init(i32* %23)
  %25 = load i32, i32* @EPROTO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %9, align 4
  %27 = load i64, i64* %6, align 8
  %28 = icmp ult i64 %27, 4
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %199

30:                                               ; preds = %21
  %31 = load i8*, i8** %10, align 8
  %32 = bitcast i8* %31 to i32*
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ntohl(i32 %33)
  %35 = load i32, i32* @YYTH_MAGIC, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %199

38:                                               ; preds = %30
  %39 = load i8*, i8** %10, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 4
  %41 = bitcast i8* %40 to i32*
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ntohl(i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i64, i64* %6, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = icmp ult i64 %44, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  br label %199

49:                                               ; preds = %38
  %50 = load i8*, i8** %10, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 12
  %52 = bitcast i8* %51 to i32*
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @ntohs(i32 %53)
  %55 = load %struct.aa_dfa*, %struct.aa_dfa** %12, align 8
  %56 = getelementptr inbounds %struct.aa_dfa, %struct.aa_dfa* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load %struct.aa_dfa*, %struct.aa_dfa** %12, align 8
  %58 = getelementptr inbounds %struct.aa_dfa, %struct.aa_dfa* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %49
  %62 = load %struct.aa_dfa*, %struct.aa_dfa** %12, align 8
  %63 = getelementptr inbounds %struct.aa_dfa, %struct.aa_dfa* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @YYTH_FLAG_DIFF_ENCODE, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %199

68:                                               ; preds = %61, %49
  %69 = load i32, i32* %8, align 4
  %70 = load i8*, i8** %10, align 8
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  store i8* %72, i8** %10, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = load i64, i64* %6, align 8
  %76 = sub i64 %75, %74
  store i64 %76, i64* %6, align 8
  br label %77

77:                                               ; preds = %148, %68
  %78 = load i64, i64* %6, align 8
  %79 = icmp ugt i64 %78, 0
  br i1 %79, label %80, label %176

80:                                               ; preds = %77
  %81 = load i8*, i8** %10, align 8
  %82 = load i64, i64* %6, align 8
  %83 = call %struct.table_header* @unpack_table(i8* %81, i64 %82)
  store %struct.table_header* %83, %struct.table_header** %11, align 8
  %84 = load %struct.table_header*, %struct.table_header** %11, align 8
  %85 = icmp ne %struct.table_header* %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %80
  br label %199

87:                                               ; preds = %80
  %88 = load %struct.table_header*, %struct.table_header** %11, align 8
  %89 = getelementptr inbounds %struct.table_header, %struct.table_header* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  switch i32 %90, label %135 [
    i32 134, label %91
    i32 133, label %101
    i32 132, label %111
    i32 130, label %119
    i32 128, label %119
    i32 131, label %119
    i32 129, label %127
  ]

91:                                               ; preds = %87
  %92 = load %struct.table_header*, %struct.table_header** %11, align 8
  %93 = getelementptr inbounds %struct.table_header, %struct.table_header* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @ACCEPT1_FLAGS(i32 %95)
  %97 = and i32 %94, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %91
  br label %199

100:                                              ; preds = %91
  br label %136

101:                                              ; preds = %87
  %102 = load %struct.table_header*, %struct.table_header** %11, align 8
  %103 = getelementptr inbounds %struct.table_header, %struct.table_header* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @ACCEPT2_FLAGS(i32 %105)
  %107 = and i32 %104, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %101
  br label %199

110:                                              ; preds = %101
  br label %136

111:                                              ; preds = %87
  %112 = load %struct.table_header*, %struct.table_header** %11, align 8
  %113 = getelementptr inbounds %struct.table_header, %struct.table_header* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @YYTD_DATA32, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  br label %199

118:                                              ; preds = %111
  br label %136

119:                                              ; preds = %87, %87, %87
  %120 = load %struct.table_header*, %struct.table_header** %11, align 8
  %121 = getelementptr inbounds %struct.table_header, %struct.table_header* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @YYTD_DATA16, align 4
  %124 = icmp ne i32 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %119
  br label %199

126:                                              ; preds = %119
  br label %136

127:                                              ; preds = %87
  %128 = load %struct.table_header*, %struct.table_header** %11, align 8
  %129 = getelementptr inbounds %struct.table_header, %struct.table_header* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @YYTD_DATA8, align 4
  %132 = icmp ne i32 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %127
  br label %199

134:                                              ; preds = %127
  br label %136

135:                                              ; preds = %87
  br label %199

136:                                              ; preds = %134, %126, %118, %110, %100
  %137 = load %struct.aa_dfa*, %struct.aa_dfa** %12, align 8
  %138 = getelementptr inbounds %struct.aa_dfa, %struct.aa_dfa* %137, i32 0, i32 1
  %139 = load %struct.table_header**, %struct.table_header*** %138, align 8
  %140 = load %struct.table_header*, %struct.table_header** %11, align 8
  %141 = getelementptr inbounds %struct.table_header, %struct.table_header* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.table_header*, %struct.table_header** %139, i64 %143
  %145 = load %struct.table_header*, %struct.table_header** %144, align 8
  %146 = icmp ne %struct.table_header* %145, null
  br i1 %146, label %147, label %148

147:                                              ; preds = %136
  br label %199

148:                                              ; preds = %136
  %149 = load %struct.table_header*, %struct.table_header** %11, align 8
  %150 = load %struct.aa_dfa*, %struct.aa_dfa** %12, align 8
  %151 = getelementptr inbounds %struct.aa_dfa, %struct.aa_dfa* %150, i32 0, i32 1
  %152 = load %struct.table_header**, %struct.table_header*** %151, align 8
  %153 = load %struct.table_header*, %struct.table_header** %11, align 8
  %154 = getelementptr inbounds %struct.table_header, %struct.table_header* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.table_header*, %struct.table_header** %152, i64 %156
  store %struct.table_header* %149, %struct.table_header** %157, align 8
  %158 = load %struct.table_header*, %struct.table_header** %11, align 8
  %159 = getelementptr inbounds %struct.table_header, %struct.table_header* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.table_header*, %struct.table_header** %11, align 8
  %162 = getelementptr inbounds %struct.table_header, %struct.table_header* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = call i64 @table_size(i32 %160, i32 %163)
  %165 = load i8*, i8** %10, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 %164
  store i8* %166, i8** %10, align 8
  %167 = load %struct.table_header*, %struct.table_header** %11, align 8
  %168 = getelementptr inbounds %struct.table_header, %struct.table_header* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.table_header*, %struct.table_header** %11, align 8
  %171 = getelementptr inbounds %struct.table_header, %struct.table_header* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = call i64 @table_size(i32 %169, i32 %172)
  %174 = load i64, i64* %6, align 8
  %175 = sub i64 %174, %173
  store i64 %175, i64* %6, align 8
  store %struct.table_header* null, %struct.table_header** %11, align 8
  br label %77

176:                                              ; preds = %77
  %177 = load %struct.aa_dfa*, %struct.aa_dfa** %12, align 8
  %178 = getelementptr inbounds %struct.aa_dfa, %struct.aa_dfa* %177, i32 0, i32 1
  %179 = load %struct.table_header**, %struct.table_header*** %178, align 8
  %180 = load i32, i32* %7, align 4
  %181 = call i32 @verify_table_headers(%struct.table_header** %179, i32 %180)
  store i32 %181, i32* %9, align 4
  %182 = load i32, i32* %9, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %176
  br label %199

185:                                              ; preds = %176
  %186 = load i32, i32* %7, align 4
  %187 = load i32, i32* @DFA_FLAG_VERIFY_STATES, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %197

190:                                              ; preds = %185
  %191 = load %struct.aa_dfa*, %struct.aa_dfa** %12, align 8
  %192 = call i32 @verify_dfa(%struct.aa_dfa* %191)
  store i32 %192, i32* %9, align 4
  %193 = load i32, i32* %9, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %190
  br label %199

196:                                              ; preds = %190
  br label %197

197:                                              ; preds = %196, %185
  %198 = load %struct.aa_dfa*, %struct.aa_dfa** %12, align 8
  store %struct.aa_dfa* %198, %struct.aa_dfa** %4, align 8
  br label %206

199:                                              ; preds = %195, %184, %147, %135, %133, %125, %117, %109, %99, %86, %67, %48, %37, %29, %20
  %200 = load %struct.table_header*, %struct.table_header** %11, align 8
  %201 = call i32 @kvfree(%struct.table_header* %200)
  %202 = load %struct.aa_dfa*, %struct.aa_dfa** %12, align 8
  %203 = call i32 @dfa_free(%struct.aa_dfa* %202)
  %204 = load i32, i32* %9, align 4
  %205 = call %struct.aa_dfa* @ERR_PTR(i32 %204)
  store %struct.aa_dfa* %205, %struct.aa_dfa** %4, align 8
  br label %206

206:                                              ; preds = %199, %197
  %207 = load %struct.aa_dfa*, %struct.aa_dfa** %4, align 8
  ret %struct.aa_dfa* %207
}

declare dso_local %struct.aa_dfa* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local %struct.table_header* @unpack_table(i8*, i64) #1

declare dso_local i32 @ACCEPT1_FLAGS(i32) #1

declare dso_local i32 @ACCEPT2_FLAGS(i32) #1

declare dso_local i64 @table_size(i32, i32) #1

declare dso_local i32 @verify_table_headers(%struct.table_header**, i32) #1

declare dso_local i32 @verify_dfa(%struct.aa_dfa*) #1

declare dso_local i32 @kvfree(%struct.table_header*) #1

declare dso_local i32 @dfa_free(%struct.aa_dfa*) #1

declare dso_local %struct.aa_dfa* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
