; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_sip.c_ct_sip_get_sdp_header.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_sip.c_ct_sip_get_sdp_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sip_header = type { i32, i32 (%struct.nf_conn.0*, i8*, i8*, i32*)*, i32, i64, i32 }
%struct.nf_conn.0 = type opaque
%struct.nf_conn = type { i32 }

@NFPROTO_IPV4 = common dso_local global i64 0, align 8
@ct_sdp_hdrs_v4 = common dso_local global %struct.sip_header* null, align 8
@ct_sdp_hdrs_v6 = common dso_local global %struct.sip_header* null, align 8
@SDP_HDR_UNSPEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ct_sip_get_sdp_header(%struct.nf_conn* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.nf_conn*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.sip_header*, align 8
  %19 = alloca %struct.sip_header*, align 8
  %20 = alloca %struct.sip_header*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  store %struct.nf_conn* %0, %struct.nf_conn** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %24 = load i8*, i8** %11, align 8
  store i8* %24, i8** %21, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = load i32, i32* %13, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  store i8* %28, i8** %22, align 8
  store i32 0, i32* %23, align 4
  %29 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %30 = call i64 @nf_ct_l3num(%struct.nf_conn* %29)
  %31 = load i64, i64* @NFPROTO_IPV4, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %8
  %34 = load %struct.sip_header*, %struct.sip_header** @ct_sdp_hdrs_v4, align 8
  br label %37

35:                                               ; preds = %8
  %36 = load %struct.sip_header*, %struct.sip_header** @ct_sdp_hdrs_v6, align 8
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi %struct.sip_header* [ %34, %33 ], [ %36, %35 ]
  store %struct.sip_header* %38, %struct.sip_header** %18, align 8
  %39 = load %struct.sip_header*, %struct.sip_header** %18, align 8
  %40 = load i32, i32* %14, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.sip_header, %struct.sip_header* %39, i64 %41
  store %struct.sip_header* %42, %struct.sip_header** %19, align 8
  %43 = load %struct.sip_header*, %struct.sip_header** %18, align 8
  %44 = load i32, i32* %15, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.sip_header, %struct.sip_header* %43, i64 %45
  store %struct.sip_header* %46, %struct.sip_header** %20, align 8
  %47 = load i32, i32* %12, align 4
  %48 = load i8*, i8** %11, align 8
  %49 = zext i32 %47 to i64
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  store i8* %50, i8** %11, align 8
  br label %51

51:                                               ; preds = %203, %37
  %52 = load i8*, i8** %11, align 8
  %53 = load i8*, i8** %22, align 8
  %54 = icmp ult i8* %52, %53
  br i1 %54, label %55, label %206

55:                                               ; preds = %51
  %56 = load i8*, i8** %11, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 13
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load i8*, i8** %11, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 10
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %203

66:                                               ; preds = %60, %55
  %67 = load i8*, i8** %11, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %11, align 8
  %69 = load i8*, i8** %22, align 8
  %70 = icmp uge i8* %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %206

72:                                               ; preds = %66
  %73 = load i8*, i8** %11, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 -1
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 13
  br i1 %77, label %78, label %90

78:                                               ; preds = %72
  %79 = load i8*, i8** %11, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 10
  br i1 %82, label %83, label %90

83:                                               ; preds = %78
  %84 = load i8*, i8** %11, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %11, align 8
  %86 = load i8*, i8** %22, align 8
  %87 = icmp uge i8* %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %206

89:                                               ; preds = %83
  br label %90

90:                                               ; preds = %89, %78, %72
  %91 = load i32, i32* %15, align 4
  %92 = load i32, i32* @SDP_HDR_UNSPEC, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %116

94:                                               ; preds = %90
  %95 = load i8*, i8** %22, align 8
  %96 = load i8*, i8** %11, align 8
  %97 = ptrtoint i8* %95 to i64
  %98 = ptrtoint i8* %96 to i64
  %99 = sub i64 %97, %98
  %100 = load %struct.sip_header*, %struct.sip_header** %20, align 8
  %101 = getelementptr inbounds %struct.sip_header, %struct.sip_header* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = sext i32 %102 to i64
  %104 = icmp sge i64 %99, %103
  br i1 %104, label %105, label %116

105:                                              ; preds = %94
  %106 = load i8*, i8** %11, align 8
  %107 = load %struct.sip_header*, %struct.sip_header** %20, align 8
  %108 = getelementptr inbounds %struct.sip_header, %struct.sip_header* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.sip_header*, %struct.sip_header** %20, align 8
  %111 = getelementptr inbounds %struct.sip_header, %struct.sip_header* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i64 @strncasecmp(i8* %106, i32 %109, i32 %112)
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %105
  br label %206

116:                                              ; preds = %105, %94, %90
  %117 = load i8*, i8** %22, align 8
  %118 = load i8*, i8** %11, align 8
  %119 = ptrtoint i8* %117 to i64
  %120 = ptrtoint i8* %118 to i64
  %121 = sub i64 %119, %120
  %122 = load %struct.sip_header*, %struct.sip_header** %19, align 8
  %123 = getelementptr inbounds %struct.sip_header, %struct.sip_header* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = sext i32 %124 to i64
  %126 = icmp sge i64 %121, %125
  br i1 %126, label %127, label %144

127:                                              ; preds = %116
  %128 = load i8*, i8** %11, align 8
  %129 = load %struct.sip_header*, %struct.sip_header** %19, align 8
  %130 = getelementptr inbounds %struct.sip_header, %struct.sip_header* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.sip_header*, %struct.sip_header** %19, align 8
  %133 = getelementptr inbounds %struct.sip_header, %struct.sip_header* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i64 @strncasecmp(i8* %128, i32 %131, i32 %134)
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %127
  %138 = load %struct.sip_header*, %struct.sip_header** %19, align 8
  %139 = getelementptr inbounds %struct.sip_header, %struct.sip_header* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i8*, i8** %11, align 8
  %142 = sext i32 %140 to i64
  %143 = getelementptr inbounds i8, i8* %141, i64 %142
  store i8* %143, i8** %11, align 8
  br label %145

144:                                              ; preds = %127, %116
  br label %203

145:                                              ; preds = %137
  br label %146

146:                                              ; preds = %145
  %147 = load i8*, i8** %11, align 8
  %148 = load i8*, i8** %21, align 8
  %149 = ptrtoint i8* %147 to i64
  %150 = ptrtoint i8* %148 to i64
  %151 = sub i64 %149, %150
  %152 = trunc i64 %151 to i32
  %153 = load i32*, i32** %16, align 8
  store i32 %152, i32* %153, align 4
  %154 = load %struct.sip_header*, %struct.sip_header** %19, align 8
  %155 = getelementptr inbounds %struct.sip_header, %struct.sip_header* %154, i32 0, i32 3
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %178

158:                                              ; preds = %146
  %159 = load i8*, i8** %11, align 8
  %160 = load i8*, i8** %22, align 8
  %161 = load %struct.sip_header*, %struct.sip_header** %19, align 8
  %162 = getelementptr inbounds %struct.sip_header, %struct.sip_header* %161, i32 0, i32 3
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.sip_header*, %struct.sip_header** %19, align 8
  %165 = getelementptr inbounds %struct.sip_header, %struct.sip_header* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = call i8* @ct_sdp_header_search(i8* %159, i8* %160, i64 %163, i32 %166)
  store i8* %167, i8** %11, align 8
  %168 = load i8*, i8** %11, align 8
  %169 = icmp ne i8* %168, null
  br i1 %169, label %171, label %170

170:                                              ; preds = %158
  store i32 -1, i32* %9, align 4
  br label %207

171:                                              ; preds = %158
  %172 = load %struct.sip_header*, %struct.sip_header** %19, align 8
  %173 = getelementptr inbounds %struct.sip_header, %struct.sip_header* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = load i8*, i8** %11, align 8
  %176 = sext i32 %174 to i64
  %177 = getelementptr inbounds i8, i8* %175, i64 %176
  store i8* %177, i8** %11, align 8
  br label %178

178:                                              ; preds = %171, %146
  %179 = load %struct.sip_header*, %struct.sip_header** %19, align 8
  %180 = getelementptr inbounds %struct.sip_header, %struct.sip_header* %179, i32 0, i32 1
  %181 = load i32 (%struct.nf_conn.0*, i8*, i8*, i32*)*, i32 (%struct.nf_conn.0*, i8*, i8*, i32*)** %180, align 8
  %182 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %183 = bitcast %struct.nf_conn* %182 to %struct.nf_conn.0*
  %184 = load i8*, i8** %11, align 8
  %185 = load i8*, i8** %22, align 8
  %186 = call i32 %181(%struct.nf_conn.0* %183, i8* %184, i8* %185, i32* %23)
  %187 = load i32*, i32** %17, align 8
  store i32 %186, i32* %187, align 4
  %188 = load i32*, i32** %17, align 8
  %189 = load i32, i32* %188, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %192, label %191

191:                                              ; preds = %178
  store i32 -1, i32* %9, align 4
  br label %207

192:                                              ; preds = %178
  %193 = load i8*, i8** %11, align 8
  %194 = load i8*, i8** %21, align 8
  %195 = ptrtoint i8* %193 to i64
  %196 = ptrtoint i8* %194 to i64
  %197 = sub i64 %195, %196
  %198 = load i32, i32* %23, align 4
  %199 = sext i32 %198 to i64
  %200 = add nsw i64 %197, %199
  %201 = trunc i64 %200 to i32
  %202 = load i32*, i32** %16, align 8
  store i32 %201, i32* %202, align 4
  store i32 1, i32* %9, align 4
  br label %207

203:                                              ; preds = %144, %65
  %204 = load i8*, i8** %11, align 8
  %205 = getelementptr inbounds i8, i8* %204, i32 1
  store i8* %205, i8** %11, align 8
  br label %51

206:                                              ; preds = %115, %88, %71, %51
  store i32 0, i32* %9, align 4
  br label %207

207:                                              ; preds = %206, %192, %191, %170
  %208 = load i32, i32* %9, align 4
  ret i32 %208
}

declare dso_local i64 @nf_ct_l3num(%struct.nf_conn*) #1

declare dso_local i64 @strncasecmp(i8*, i32, i32) #1

declare dso_local i8* @ct_sdp_header_search(i8*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
