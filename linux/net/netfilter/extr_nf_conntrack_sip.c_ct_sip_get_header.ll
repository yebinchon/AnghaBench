; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_sip.c_ct_sip_get_header.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_sip.c_ct_sip_get_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sip_header = type { i32, i32, i32 (%struct.nf_conn.0*, i8*, i8*, i32*)*, i32, i64, i64, i64 }
%struct.nf_conn.0 = type opaque
%struct.nf_conn = type { i32 }

@ct_sip_hdrs = common dso_local global %struct.sip_header* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ct_sip_get_header(%struct.nf_conn* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.nf_conn*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.sip_header*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store %struct.nf_conn* %0, %struct.nf_conn** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %20 = load %struct.sip_header*, %struct.sip_header** @ct_sip_hdrs, align 8
  %21 = load i32, i32* %13, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.sip_header, %struct.sip_header* %20, i64 %22
  store %struct.sip_header* %23, %struct.sip_header** %16, align 8
  %24 = load i8*, i8** %10, align 8
  store i8* %24, i8** %17, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = load i32, i32* %12, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  store i8* %28, i8** %18, align 8
  store i32 0, i32* %19, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i8*, i8** %10, align 8
  %31 = zext i32 %29 to i64
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  store i8* %32, i8** %10, align 8
  br label %33

33:                                               ; preds = %239, %7
  %34 = load i8*, i8** %10, align 8
  %35 = load i8*, i8** %18, align 8
  %36 = icmp ult i8* %34, %35
  br i1 %36, label %37, label %242

37:                                               ; preds = %33
  %38 = load i8*, i8** %10, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 13
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load i8*, i8** %10, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 10
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %239

48:                                               ; preds = %42, %37
  %49 = load i8*, i8** %10, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %10, align 8
  %51 = load i8*, i8** %18, align 8
  %52 = icmp uge i8* %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %242

54:                                               ; preds = %48
  %55 = load i8*, i8** %10, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 -1
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 13
  br i1 %59, label %60, label %72

60:                                               ; preds = %54
  %61 = load i8*, i8** %10, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 10
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = load i8*, i8** %10, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %10, align 8
  %68 = load i8*, i8** %18, align 8
  %69 = icmp uge i8* %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %242

71:                                               ; preds = %65
  br label %72

72:                                               ; preds = %71, %60, %54
  %73 = load i8*, i8** %10, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 32
  br i1 %76, label %82, label %77

77:                                               ; preds = %72
  %78 = load i8*, i8** %10, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 9
  br i1 %81, label %82, label %83

82:                                               ; preds = %77, %72
  br label %239

83:                                               ; preds = %77
  %84 = load i8*, i8** %18, align 8
  %85 = load i8*, i8** %10, align 8
  %86 = ptrtoint i8* %84 to i64
  %87 = ptrtoint i8* %85 to i64
  %88 = sub i64 %86, %87
  %89 = load %struct.sip_header*, %struct.sip_header** %16, align 8
  %90 = getelementptr inbounds %struct.sip_header, %struct.sip_header* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = icmp sge i64 %88, %92
  br i1 %93, label %94, label %111

94:                                               ; preds = %83
  %95 = load i8*, i8** %10, align 8
  %96 = load %struct.sip_header*, %struct.sip_header** %16, align 8
  %97 = getelementptr inbounds %struct.sip_header, %struct.sip_header* %96, i32 0, i32 6
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.sip_header*, %struct.sip_header** %16, align 8
  %100 = getelementptr inbounds %struct.sip_header, %struct.sip_header* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i64 @strncasecmp(i8* %95, i64 %98, i32 %101)
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %94
  %105 = load %struct.sip_header*, %struct.sip_header** %16, align 8
  %106 = getelementptr inbounds %struct.sip_header, %struct.sip_header* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i8*, i8** %10, align 8
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i8, i8* %108, i64 %109
  store i8* %110, i8** %10, align 8
  br label %157

111:                                              ; preds = %94, %83
  %112 = load %struct.sip_header*, %struct.sip_header** %16, align 8
  %113 = getelementptr inbounds %struct.sip_header, %struct.sip_header* %112, i32 0, i32 5
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %155

116:                                              ; preds = %111
  %117 = load i8*, i8** %18, align 8
  %118 = load i8*, i8** %10, align 8
  %119 = ptrtoint i8* %117 to i64
  %120 = ptrtoint i8* %118 to i64
  %121 = sub i64 %119, %120
  %122 = load %struct.sip_header*, %struct.sip_header** %16, align 8
  %123 = getelementptr inbounds %struct.sip_header, %struct.sip_header* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = icmp sge i64 %121, %126
  br i1 %127, label %128, label %155

128:                                              ; preds = %116
  %129 = load i8*, i8** %10, align 8
  %130 = load %struct.sip_header*, %struct.sip_header** %16, align 8
  %131 = getelementptr inbounds %struct.sip_header, %struct.sip_header* %130, i32 0, i32 5
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.sip_header*, %struct.sip_header** %16, align 8
  %134 = getelementptr inbounds %struct.sip_header, %struct.sip_header* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i64 @strncasecmp(i8* %129, i64 %132, i32 %135)
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %155

138:                                              ; preds = %128
  %139 = load i8*, i8** %10, align 8
  %140 = load %struct.sip_header*, %struct.sip_header** %16, align 8
  %141 = getelementptr inbounds %struct.sip_header, %struct.sip_header* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* %139, i64 %143
  %145 = load i8, i8* %144, align 1
  %146 = call i32 @isalpha(i8 signext %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %155, label %148

148:                                              ; preds = %138
  %149 = load %struct.sip_header*, %struct.sip_header** %16, align 8
  %150 = getelementptr inbounds %struct.sip_header, %struct.sip_header* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i8*, i8** %10, align 8
  %153 = sext i32 %151 to i64
  %154 = getelementptr inbounds i8, i8* %152, i64 %153
  store i8* %154, i8** %10, align 8
  br label %156

155:                                              ; preds = %138, %128, %116, %111
  br label %239

156:                                              ; preds = %148
  br label %157

157:                                              ; preds = %156, %104
  %158 = load i8*, i8** %10, align 8
  %159 = load i8*, i8** %18, align 8
  %160 = call i8* @sip_skip_whitespace(i8* %158, i8* %159)
  store i8* %160, i8** %10, align 8
  %161 = load i8*, i8** %10, align 8
  %162 = icmp eq i8* %161, null
  br i1 %162, label %163, label %164

163:                                              ; preds = %157
  br label %242

164:                                              ; preds = %157
  %165 = load i8*, i8** %10, align 8
  %166 = load i8, i8* %165, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp ne i32 %167, 58
  br i1 %168, label %174, label %169

169:                                              ; preds = %164
  %170 = load i8*, i8** %10, align 8
  %171 = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %171, i8** %10, align 8
  %172 = load i8*, i8** %18, align 8
  %173 = icmp uge i8* %171, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %169, %164
  br label %242

175:                                              ; preds = %169
  %176 = load i8*, i8** %10, align 8
  %177 = load i8*, i8** %18, align 8
  %178 = call i8* @sip_skip_whitespace(i8* %176, i8* %177)
  store i8* %178, i8** %10, align 8
  %179 = load i8*, i8** %10, align 8
  %180 = icmp eq i8* %179, null
  br i1 %180, label %181, label %182

181:                                              ; preds = %175
  br label %242

182:                                              ; preds = %175
  %183 = load i8*, i8** %10, align 8
  %184 = load i8*, i8** %17, align 8
  %185 = ptrtoint i8* %183 to i64
  %186 = ptrtoint i8* %184 to i64
  %187 = sub i64 %185, %186
  %188 = trunc i64 %187 to i32
  %189 = load i32*, i32** %14, align 8
  store i32 %188, i32* %189, align 4
  %190 = load %struct.sip_header*, %struct.sip_header** %16, align 8
  %191 = getelementptr inbounds %struct.sip_header, %struct.sip_header* %190, i32 0, i32 4
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %214

194:                                              ; preds = %182
  %195 = load i8*, i8** %10, align 8
  %196 = load i8*, i8** %18, align 8
  %197 = load %struct.sip_header*, %struct.sip_header** %16, align 8
  %198 = getelementptr inbounds %struct.sip_header, %struct.sip_header* %197, i32 0, i32 4
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.sip_header*, %struct.sip_header** %16, align 8
  %201 = getelementptr inbounds %struct.sip_header, %struct.sip_header* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 8
  %203 = call i8* @ct_sip_header_search(i8* %195, i8* %196, i64 %199, i32 %202)
  store i8* %203, i8** %10, align 8
  %204 = load i8*, i8** %10, align 8
  %205 = icmp ne i8* %204, null
  br i1 %205, label %207, label %206

206:                                              ; preds = %194
  store i32 -1, i32* %8, align 4
  br label %243

207:                                              ; preds = %194
  %208 = load %struct.sip_header*, %struct.sip_header** %16, align 8
  %209 = getelementptr inbounds %struct.sip_header, %struct.sip_header* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 8
  %211 = load i8*, i8** %10, align 8
  %212 = sext i32 %210 to i64
  %213 = getelementptr inbounds i8, i8* %211, i64 %212
  store i8* %213, i8** %10, align 8
  br label %214

214:                                              ; preds = %207, %182
  %215 = load %struct.sip_header*, %struct.sip_header** %16, align 8
  %216 = getelementptr inbounds %struct.sip_header, %struct.sip_header* %215, i32 0, i32 2
  %217 = load i32 (%struct.nf_conn.0*, i8*, i8*, i32*)*, i32 (%struct.nf_conn.0*, i8*, i8*, i32*)** %216, align 8
  %218 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %219 = bitcast %struct.nf_conn* %218 to %struct.nf_conn.0*
  %220 = load i8*, i8** %10, align 8
  %221 = load i8*, i8** %18, align 8
  %222 = call i32 %217(%struct.nf_conn.0* %219, i8* %220, i8* %221, i32* %19)
  %223 = load i32*, i32** %15, align 8
  store i32 %222, i32* %223, align 4
  %224 = load i32*, i32** %15, align 8
  %225 = load i32, i32* %224, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %228, label %227

227:                                              ; preds = %214
  store i32 -1, i32* %8, align 4
  br label %243

228:                                              ; preds = %214
  %229 = load i8*, i8** %10, align 8
  %230 = load i8*, i8** %17, align 8
  %231 = ptrtoint i8* %229 to i64
  %232 = ptrtoint i8* %230 to i64
  %233 = sub i64 %231, %232
  %234 = load i32, i32* %19, align 4
  %235 = sext i32 %234 to i64
  %236 = add nsw i64 %233, %235
  %237 = trunc i64 %236 to i32
  %238 = load i32*, i32** %14, align 8
  store i32 %237, i32* %238, align 4
  store i32 1, i32* %8, align 4
  br label %243

239:                                              ; preds = %155, %82, %47
  %240 = load i8*, i8** %10, align 8
  %241 = getelementptr inbounds i8, i8* %240, i32 1
  store i8* %241, i8** %10, align 8
  br label %33

242:                                              ; preds = %181, %174, %163, %70, %53, %33
  store i32 0, i32* %8, align 4
  br label %243

243:                                              ; preds = %242, %228, %227, %206
  %244 = load i32, i32* %8, align 4
  ret i32 %244
}

declare dso_local i64 @strncasecmp(i8*, i64, i32) #1

declare dso_local i32 @isalpha(i8 signext) #1

declare dso_local i8* @sip_skip_whitespace(i8*, i8*) #1

declare dso_local i8* @ct_sip_header_search(i8*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
