; ModuleID = '/home/carl/AnghaBench/linux/scripts/extr_pnmtologo.c_write_logo_clut224.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/extr_pnmtologo.c_write_logo_clut224.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }

@logo_height = common dso_local global i32 0, align 4
@logo_width = common dso_local global i32 0, align 4
@logo_clutsize = common dso_local global i32 0, align 4
@logo_data = common dso_local global %struct.TYPE_5__** null, align 8
@logo_clut = common dso_local global %struct.TYPE_5__* null, align 8
@MAX_LINUX_LOGO_COLORS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"Image has more than %d colors\0AUse ppmquant(1) to reduce the number of colors\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"\0A};\0A\0A\00", align 1
@out = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"static unsigned char %s_clut[] __initdata = {\0A\00", align 1
@logoname = common dso_local global i8* null, align 8
@write_hex_cnt = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @write_logo_clut224 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_logo_clut224() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca { i64, i32 }, align 4
  %5 = alloca { i64, i32 }, align 4
  %6 = alloca { i64, i32 }, align 4
  %7 = alloca { i64, i32 }, align 4
  store i32 0, i32* %1, align 4
  br label %8

8:                                                ; preds = %86, %0
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* @logo_height, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %89

12:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %13

13:                                               ; preds = %82, %12
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @logo_width, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %85

17:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %51, %17
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @logo_clutsize, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %54

22:                                               ; preds = %18
  %23 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @logo_data, align 8
  %24 = load i32, i32* %1, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %23, i64 %25
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = load i32, i32* %2, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 %29
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** @logo_clut, align 8
  %32 = load i32, i32* %3, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i64 %33
  %35 = bitcast { i64, i32 }* %4 to i8*
  %36 = bitcast %struct.TYPE_5__* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %35, i8* align 4 %36, i64 12, i1 false)
  %37 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %4, i32 0, i32 0
  %38 = load i64, i64* %37, align 4
  %39 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %4, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = bitcast { i64, i32 }* %5 to i8*
  %42 = bitcast %struct.TYPE_5__* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %42, i64 12, i1 false)
  %43 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %5, i32 0, i32 0
  %44 = load i64, i64* %43, align 4
  %45 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %5, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @is_equal(i64 %38, i32 %40, i64 %44, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %22
  br label %54

50:                                               ; preds = %22
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %3, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %3, align 4
  br label %18

54:                                               ; preds = %49, %18
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @logo_clutsize, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %81

58:                                               ; preds = %54
  %59 = load i32, i32* @logo_clutsize, align 4
  %60 = load i32, i32* @MAX_LINUX_LOGO_COLORS, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i32, i32* @MAX_LINUX_LOGO_COLORS, align 4
  %64 = call i32 @die(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %62, %58
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** @logo_clut, align 8
  %67 = load i32, i32* @logo_clutsize, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* @logo_clutsize, align 4
  %69 = zext i32 %67 to i64
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i64 %69
  %71 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @logo_data, align 8
  %72 = load i32, i32* %1, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %71, i64 %73
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = load i32, i32* %2, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i64 %77
  %79 = bitcast %struct.TYPE_5__* %70 to i8*
  %80 = bitcast %struct.TYPE_5__* %78 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %79, i8* align 4 %80, i64 12, i1 false)
  br label %81

81:                                               ; preds = %65, %54
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %2, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %2, align 4
  br label %13

85:                                               ; preds = %13
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %1, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %1, align 4
  br label %8

89:                                               ; preds = %8
  %90 = call i32 (...) @write_header()
  store i32 0, i32* %1, align 4
  br label %91

91:                                               ; preds = %145, %89
  %92 = load i32, i32* %1, align 4
  %93 = load i32, i32* @logo_height, align 4
  %94 = icmp ult i32 %92, %93
  br i1 %94, label %95, label %148

95:                                               ; preds = %91
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %141, %95
  %97 = load i32, i32* %2, align 4
  %98 = load i32, i32* @logo_width, align 4
  %99 = icmp ult i32 %97, %98
  br i1 %99, label %100, label %144

100:                                              ; preds = %96
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %134, %100
  %102 = load i32, i32* %3, align 4
  %103 = load i32, i32* @logo_clutsize, align 4
  %104 = icmp ult i32 %102, %103
  br i1 %104, label %105, label %137

105:                                              ; preds = %101
  %106 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @logo_data, align 8
  %107 = load i32, i32* %1, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %106, i64 %108
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = load i32, i32* %2, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i64 %112
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** @logo_clut, align 8
  %115 = load i32, i32* %3, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i64 %116
  %118 = bitcast { i64, i32 }* %6 to i8*
  %119 = bitcast %struct.TYPE_5__* %113 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %118, i8* align 4 %119, i64 12, i1 false)
  %120 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 0
  %121 = load i64, i64* %120, align 4
  %122 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = bitcast { i64, i32 }* %7 to i8*
  %125 = bitcast %struct.TYPE_5__* %117 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %124, i8* align 4 %125, i64 12, i1 false)
  %126 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 0
  %127 = load i64, i64* %126, align 4
  %128 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i64 @is_equal(i64 %121, i32 %123, i64 %127, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %105
  br label %137

133:                                              ; preds = %105
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %3, align 4
  %136 = add i32 %135, 1
  store i32 %136, i32* %3, align 4
  br label %101

137:                                              ; preds = %132, %101
  %138 = load i32, i32* %3, align 4
  %139 = add i32 %138, 32
  %140 = call i32 @write_hex(i32 %139)
  br label %141

141:                                              ; preds = %137
  %142 = load i32, i32* %2, align 4
  %143 = add i32 %142, 1
  store i32 %143, i32* %2, align 4
  br label %96

144:                                              ; preds = %96
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %1, align 4
  %147 = add i32 %146, 1
  store i32 %147, i32* %1, align 4
  br label %91

148:                                              ; preds = %91
  %149 = load i32, i32* @out, align 4
  %150 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %149)
  %151 = load i32, i32* @out, align 4
  %152 = load i8*, i8** @logoname, align 8
  %153 = call i32 @fprintf(i32 %151, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i8* %152)
  store i64 0, i64* @write_hex_cnt, align 8
  store i32 0, i32* %1, align 4
  br label %154

154:                                              ; preds = %180, %148
  %155 = load i32, i32* %1, align 4
  %156 = load i32, i32* @logo_clutsize, align 4
  %157 = icmp ult i32 %155, %156
  br i1 %157, label %158, label %183

158:                                              ; preds = %154
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** @logo_clut, align 8
  %160 = load i32, i32* %1, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @write_hex(i32 %164)
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** @logo_clut, align 8
  %167 = load i32, i32* %1, align 4
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @write_hex(i32 %171)
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** @logo_clut, align 8
  %174 = load i32, i32* %1, align 4
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @write_hex(i32 %178)
  br label %180

180:                                              ; preds = %158
  %181 = load i32, i32* %1, align 4
  %182 = add i32 %181, 1
  store i32 %182, i32* %1, align 4
  br label %154

183:                                              ; preds = %154
  %184 = call i32 (...) @write_footer()
  ret void
}

declare dso_local i64 @is_equal(i64, i32, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @die(i8*, i32) #1

declare dso_local i32 @write_header(...) #1

declare dso_local i32 @write_hex(i32) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @write_footer(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
