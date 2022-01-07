; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_cputopo.c_build_cpu_topology.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_cputopo.c_build_cpu_topology.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_topology = type { i64, i8**, i8**, i64, i64, i8** }

@MAXPATHLEN = common dso_local global i32 0, align 4
@CORE_SIB_FMT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@DIE_SIB_FMT = common dso_local global i32 0, align 4
@THRD_SIB_FMT_NEW = common dso_local global i32 0, align 4
@F_OK = common dso_local global i32 0, align 4
@THRD_SIB_FMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpu_topology*, i32)* @build_cpu_topology to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_cpu_topology(%struct.cpu_topology* %0, i32 %1) #0 {
  %3 = alloca %struct.cpu_topology*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.cpu_topology* %0, %struct.cpu_topology** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load i32, i32* @MAXPATHLEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  store i8* null, i8** %8, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %12, align 8
  store i32 -1, i32* %13, align 4
  %18 = load i32, i32* @MAXPATHLEN, align 4
  %19 = load i32, i32* @CORE_SIB_FMT, align 4
  %20 = call i32 (...) @sysfs__mountpoint()
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @scnprintf(i8* %17, i32 %18, i32 %19, i32 %20, i32 %21)
  %23 = call i32* @fopen(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %23, i32** %5, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  br label %82

27:                                               ; preds = %2
  %28 = load i32*, i32** %5, align 8
  %29 = call i64 @getline(i8** %8, i64* %10, i32* %28)
  store i64 %29, i64* %11, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @fclose(i32* %30)
  %32 = load i64, i64* %11, align 8
  %33 = icmp sle i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %82

35:                                               ; preds = %27
  %36 = load i8*, i8** %8, align 8
  %37 = call i8* @strchr(i8* %36, i8 signext 10)
  store i8* %37, i8** %9, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i8*, i8** %9, align 8
  store i8 0, i8* %41, align 1
  br label %42

42:                                               ; preds = %40, %35
  store i64 0, i64* %12, align 8
  br label %43

43:                                               ; preds = %61, %42
  %44 = load i64, i64* %12, align 8
  %45 = load %struct.cpu_topology*, %struct.cpu_topology** %3, align 8
  %46 = getelementptr inbounds %struct.cpu_topology, %struct.cpu_topology* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ult i64 %44, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %43
  %50 = load i8*, i8** %8, align 8
  %51 = load %struct.cpu_topology*, %struct.cpu_topology** %3, align 8
  %52 = getelementptr inbounds %struct.cpu_topology, %struct.cpu_topology* %51, i32 0, i32 1
  %53 = load i8**, i8*** %52, align 8
  %54 = load i64, i64* %12, align 8
  %55 = getelementptr inbounds i8*, i8** %53, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @strcmp(i8* %50, i8* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %49
  br label %64

60:                                               ; preds = %49
  br label %61

61:                                               ; preds = %60
  %62 = load i64, i64* %12, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %12, align 8
  br label %43

64:                                               ; preds = %59, %43
  %65 = load i64, i64* %12, align 8
  %66 = load %struct.cpu_topology*, %struct.cpu_topology** %3, align 8
  %67 = getelementptr inbounds %struct.cpu_topology, %struct.cpu_topology* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %65, %68
  br i1 %69, label %70, label %81

70:                                               ; preds = %64
  %71 = load i8*, i8** %8, align 8
  %72 = load %struct.cpu_topology*, %struct.cpu_topology** %3, align 8
  %73 = getelementptr inbounds %struct.cpu_topology, %struct.cpu_topology* %72, i32 0, i32 1
  %74 = load i8**, i8*** %73, align 8
  %75 = load i64, i64* %12, align 8
  %76 = getelementptr inbounds i8*, i8** %74, i64 %75
  store i8* %71, i8** %76, align 8
  %77 = load %struct.cpu_topology*, %struct.cpu_topology** %3, align 8
  %78 = getelementptr inbounds %struct.cpu_topology, %struct.cpu_topology* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %78, align 8
  store i8* null, i8** %8, align 8
  store i64 0, i64* %10, align 8
  br label %81

81:                                               ; preds = %70, %64
  store i32 0, i32* %13, align 4
  br label %82

82:                                               ; preds = %81, %34, %26
  %83 = load %struct.cpu_topology*, %struct.cpu_topology** %3, align 8
  %84 = getelementptr inbounds %struct.cpu_topology, %struct.cpu_topology* %83, i32 0, i32 2
  %85 = load i8**, i8*** %84, align 8
  %86 = icmp ne i8** %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %82
  br label %153

88:                                               ; preds = %82
  %89 = load i32, i32* @MAXPATHLEN, align 4
  %90 = load i32, i32* @DIE_SIB_FMT, align 4
  %91 = call i32 (...) @sysfs__mountpoint()
  %92 = load i32, i32* %4, align 4
  %93 = call i32 @scnprintf(i8* %17, i32 %89, i32 %90, i32 %91, i32 %92)
  %94 = call i32* @fopen(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %94, i32** %5, align 8
  %95 = load i32*, i32** %5, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %98, label %97

97:                                               ; preds = %88
  br label %153

98:                                               ; preds = %88
  %99 = load i32*, i32** %5, align 8
  %100 = call i64 @getline(i8** %8, i64* %10, i32* %99)
  store i64 %100, i64* %11, align 8
  %101 = load i32*, i32** %5, align 8
  %102 = call i32 @fclose(i32* %101)
  %103 = load i64, i64* %11, align 8
  %104 = icmp sle i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %98
  br label %153

106:                                              ; preds = %98
  %107 = load i8*, i8** %8, align 8
  %108 = call i8* @strchr(i8* %107, i8 signext 10)
  store i8* %108, i8** %9, align 8
  %109 = load i8*, i8** %9, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %106
  %112 = load i8*, i8** %9, align 8
  store i8 0, i8* %112, align 1
  br label %113

113:                                              ; preds = %111, %106
  store i64 0, i64* %12, align 8
  br label %114

114:                                              ; preds = %132, %113
  %115 = load i64, i64* %12, align 8
  %116 = load %struct.cpu_topology*, %struct.cpu_topology** %3, align 8
  %117 = getelementptr inbounds %struct.cpu_topology, %struct.cpu_topology* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = icmp ult i64 %115, %118
  br i1 %119, label %120, label %135

120:                                              ; preds = %114
  %121 = load i8*, i8** %8, align 8
  %122 = load %struct.cpu_topology*, %struct.cpu_topology** %3, align 8
  %123 = getelementptr inbounds %struct.cpu_topology, %struct.cpu_topology* %122, i32 0, i32 2
  %124 = load i8**, i8*** %123, align 8
  %125 = load i64, i64* %12, align 8
  %126 = getelementptr inbounds i8*, i8** %124, i64 %125
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 @strcmp(i8* %121, i8* %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %120
  br label %135

131:                                              ; preds = %120
  br label %132

132:                                              ; preds = %131
  %133 = load i64, i64* %12, align 8
  %134 = add i64 %133, 1
  store i64 %134, i64* %12, align 8
  br label %114

135:                                              ; preds = %130, %114
  %136 = load i64, i64* %12, align 8
  %137 = load %struct.cpu_topology*, %struct.cpu_topology** %3, align 8
  %138 = getelementptr inbounds %struct.cpu_topology, %struct.cpu_topology* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = icmp eq i64 %136, %139
  br i1 %140, label %141, label %152

141:                                              ; preds = %135
  %142 = load i8*, i8** %8, align 8
  %143 = load %struct.cpu_topology*, %struct.cpu_topology** %3, align 8
  %144 = getelementptr inbounds %struct.cpu_topology, %struct.cpu_topology* %143, i32 0, i32 2
  %145 = load i8**, i8*** %144, align 8
  %146 = load i64, i64* %12, align 8
  %147 = getelementptr inbounds i8*, i8** %145, i64 %146
  store i8* %142, i8** %147, align 8
  %148 = load %struct.cpu_topology*, %struct.cpu_topology** %3, align 8
  %149 = getelementptr inbounds %struct.cpu_topology, %struct.cpu_topology* %148, i32 0, i32 3
  %150 = load i64, i64* %149, align 8
  %151 = add i64 %150, 1
  store i64 %151, i64* %149, align 8
  store i8* null, i8** %8, align 8
  store i64 0, i64* %10, align 8
  br label %152

152:                                              ; preds = %141, %135
  store i32 0, i32* %13, align 4
  br label %153

153:                                              ; preds = %152, %105, %97, %87
  %154 = load i32, i32* @MAXPATHLEN, align 4
  %155 = load i32, i32* @THRD_SIB_FMT_NEW, align 4
  %156 = call i32 (...) @sysfs__mountpoint()
  %157 = load i32, i32* %4, align 4
  %158 = call i32 @scnprintf(i8* %17, i32 %154, i32 %155, i32 %156, i32 %157)
  %159 = load i32, i32* @F_OK, align 4
  %160 = call i32 @access(i8* %17, i32 %159)
  %161 = icmp eq i32 %160, -1
  br i1 %161, label %162, label %168

162:                                              ; preds = %153
  %163 = load i32, i32* @MAXPATHLEN, align 4
  %164 = load i32, i32* @THRD_SIB_FMT, align 4
  %165 = call i32 (...) @sysfs__mountpoint()
  %166 = load i32, i32* %4, align 4
  %167 = call i32 @scnprintf(i8* %17, i32 %163, i32 %164, i32 %165, i32 %166)
  br label %168

168:                                              ; preds = %162, %153
  %169 = call i32* @fopen(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %169, i32** %5, align 8
  %170 = load i32*, i32** %5, align 8
  %171 = icmp ne i32* %170, null
  br i1 %171, label %173, label %172

172:                                              ; preds = %168
  br label %225

173:                                              ; preds = %168
  %174 = load i32*, i32** %5, align 8
  %175 = call i64 @getline(i8** %8, i64* %10, i32* %174)
  %176 = icmp sle i64 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %173
  br label %225

178:                                              ; preds = %173
  %179 = load i8*, i8** %8, align 8
  %180 = call i8* @strchr(i8* %179, i8 signext 10)
  store i8* %180, i8** %9, align 8
  %181 = load i8*, i8** %9, align 8
  %182 = icmp ne i8* %181, null
  br i1 %182, label %183, label %185

183:                                              ; preds = %178
  %184 = load i8*, i8** %9, align 8
  store i8 0, i8* %184, align 1
  br label %185

185:                                              ; preds = %183, %178
  store i64 0, i64* %12, align 8
  br label %186

186:                                              ; preds = %204, %185
  %187 = load i64, i64* %12, align 8
  %188 = load %struct.cpu_topology*, %struct.cpu_topology** %3, align 8
  %189 = getelementptr inbounds %struct.cpu_topology, %struct.cpu_topology* %188, i32 0, i32 4
  %190 = load i64, i64* %189, align 8
  %191 = icmp ult i64 %187, %190
  br i1 %191, label %192, label %207

192:                                              ; preds = %186
  %193 = load i8*, i8** %8, align 8
  %194 = load %struct.cpu_topology*, %struct.cpu_topology** %3, align 8
  %195 = getelementptr inbounds %struct.cpu_topology, %struct.cpu_topology* %194, i32 0, i32 5
  %196 = load i8**, i8*** %195, align 8
  %197 = load i64, i64* %12, align 8
  %198 = getelementptr inbounds i8*, i8** %196, i64 %197
  %199 = load i8*, i8** %198, align 8
  %200 = call i32 @strcmp(i8* %193, i8* %199)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %203, label %202

202:                                              ; preds = %192
  br label %207

203:                                              ; preds = %192
  br label %204

204:                                              ; preds = %203
  %205 = load i64, i64* %12, align 8
  %206 = add i64 %205, 1
  store i64 %206, i64* %12, align 8
  br label %186

207:                                              ; preds = %202, %186
  %208 = load i64, i64* %12, align 8
  %209 = load %struct.cpu_topology*, %struct.cpu_topology** %3, align 8
  %210 = getelementptr inbounds %struct.cpu_topology, %struct.cpu_topology* %209, i32 0, i32 4
  %211 = load i64, i64* %210, align 8
  %212 = icmp eq i64 %208, %211
  br i1 %212, label %213, label %224

213:                                              ; preds = %207
  %214 = load i8*, i8** %8, align 8
  %215 = load %struct.cpu_topology*, %struct.cpu_topology** %3, align 8
  %216 = getelementptr inbounds %struct.cpu_topology, %struct.cpu_topology* %215, i32 0, i32 5
  %217 = load i8**, i8*** %216, align 8
  %218 = load i64, i64* %12, align 8
  %219 = getelementptr inbounds i8*, i8** %217, i64 %218
  store i8* %214, i8** %219, align 8
  %220 = load %struct.cpu_topology*, %struct.cpu_topology** %3, align 8
  %221 = getelementptr inbounds %struct.cpu_topology, %struct.cpu_topology* %220, i32 0, i32 4
  %222 = load i64, i64* %221, align 8
  %223 = add i64 %222, 1
  store i64 %223, i64* %221, align 8
  store i8* null, i8** %8, align 8
  br label %224

224:                                              ; preds = %213, %207
  store i32 0, i32* %13, align 4
  br label %225

225:                                              ; preds = %224, %177, %172
  %226 = load i32*, i32** %5, align 8
  %227 = icmp ne i32* %226, null
  br i1 %227, label %228, label %231

228:                                              ; preds = %225
  %229 = load i32*, i32** %5, align 8
  %230 = call i32 @fclose(i32* %229)
  br label %231

231:                                              ; preds = %228, %225
  %232 = load i8*, i8** %8, align 8
  %233 = call i32 @free(i8* %232)
  %234 = load i32, i32* %13, align 4
  %235 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %235)
  ret i32 %234
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @scnprintf(i8*, i32, i32, i32, i32) #2

declare dso_local i32 @sysfs__mountpoint(...) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i64 @getline(i8**, i64*, i32*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @access(i8*, i32) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
