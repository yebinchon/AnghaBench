; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c_apply_upmap.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c_apply_upmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osdmap = type { i32, i64*, i32, i32 }
%struct.ceph_pg = type { i32 }
%struct.ceph_osds = type { i32*, i32 }
%struct.ceph_pg_mapping = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32** }
%struct.TYPE_3__ = type { i32, i32* }

@CRUSH_ITEM_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_osdmap*, %struct.ceph_pg*, %struct.ceph_osds*)* @apply_upmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_upmap(%struct.ceph_osdmap* %0, %struct.ceph_pg* %1, %struct.ceph_osds* %2) #0 {
  %4 = alloca %struct.ceph_osdmap*, align 8
  %5 = alloca %struct.ceph_pg*, align 8
  %6 = alloca %struct.ceph_osds*, align 8
  %7 = alloca %struct.ceph_pg_mapping*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ceph_osdmap* %0, %struct.ceph_osdmap** %4, align 8
  store %struct.ceph_pg* %1, %struct.ceph_pg** %5, align 8
  store %struct.ceph_osds* %2, %struct.ceph_osds** %6, align 8
  %16 = load %struct.ceph_osdmap*, %struct.ceph_osdmap** %4, align 8
  %17 = getelementptr inbounds %struct.ceph_osdmap, %struct.ceph_osdmap* %16, i32 0, i32 3
  %18 = load %struct.ceph_pg*, %struct.ceph_pg** %5, align 8
  %19 = call %struct.ceph_pg_mapping* @lookup_pg_mapping(i32* %17, %struct.ceph_pg* %18)
  store %struct.ceph_pg_mapping* %19, %struct.ceph_pg_mapping** %7, align 8
  %20 = load %struct.ceph_pg_mapping*, %struct.ceph_pg_mapping** %7, align 8
  %21 = icmp ne %struct.ceph_pg_mapping* %20, null
  br i1 %21, label %22, label %95

22:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %59, %22
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.ceph_pg_mapping*, %struct.ceph_pg_mapping** %7, align 8
  %26 = getelementptr inbounds %struct.ceph_pg_mapping, %struct.ceph_pg_mapping* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %24, %28
  br i1 %29, label %30, label %62

30:                                               ; preds = %23
  %31 = load %struct.ceph_pg_mapping*, %struct.ceph_pg_mapping** %7, align 8
  %32 = getelementptr inbounds %struct.ceph_pg_mapping, %struct.ceph_pg_mapping* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @CRUSH_ITEM_NONE, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %58

42:                                               ; preds = %30
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.ceph_osdmap*, %struct.ceph_osdmap** %4, align 8
  %45 = getelementptr inbounds %struct.ceph_osdmap, %struct.ceph_osdmap* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %42
  %49 = load %struct.ceph_osdmap*, %struct.ceph_osdmap** %4, align 8
  %50 = getelementptr inbounds %struct.ceph_osdmap, %struct.ceph_osdmap* %49, i32 0, i32 1
  %51 = load i64*, i64** %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  br label %200

58:                                               ; preds = %48, %42, %30
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %23

62:                                               ; preds = %23
  store i32 0, i32* %8, align 4
  br label %63

63:                                               ; preds = %85, %62
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.ceph_pg_mapping*, %struct.ceph_pg_mapping** %7, align 8
  %66 = getelementptr inbounds %struct.ceph_pg_mapping, %struct.ceph_pg_mapping* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %64, %68
  br i1 %69, label %70, label %88

70:                                               ; preds = %63
  %71 = load %struct.ceph_pg_mapping*, %struct.ceph_pg_mapping** %7, align 8
  %72 = getelementptr inbounds %struct.ceph_pg_mapping, %struct.ceph_pg_mapping* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ceph_osds*, %struct.ceph_osds** %6, align 8
  %80 = getelementptr inbounds %struct.ceph_osds, %struct.ceph_osds* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32 %78, i32* %84, align 4
  br label %85

85:                                               ; preds = %70
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %8, align 4
  br label %63

88:                                               ; preds = %63
  %89 = load %struct.ceph_pg_mapping*, %struct.ceph_pg_mapping** %7, align 8
  %90 = getelementptr inbounds %struct.ceph_pg_mapping, %struct.ceph_pg_mapping* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.ceph_osds*, %struct.ceph_osds** %6, align 8
  %94 = getelementptr inbounds %struct.ceph_osds, %struct.ceph_osds* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 8
  br label %95

95:                                               ; preds = %88, %3
  %96 = load %struct.ceph_osdmap*, %struct.ceph_osdmap** %4, align 8
  %97 = getelementptr inbounds %struct.ceph_osdmap, %struct.ceph_osdmap* %96, i32 0, i32 2
  %98 = load %struct.ceph_pg*, %struct.ceph_pg** %5, align 8
  %99 = call %struct.ceph_pg_mapping* @lookup_pg_mapping(i32* %97, %struct.ceph_pg* %98)
  store %struct.ceph_pg_mapping* %99, %struct.ceph_pg_mapping** %7, align 8
  %100 = load %struct.ceph_pg_mapping*, %struct.ceph_pg_mapping** %7, align 8
  %101 = icmp ne %struct.ceph_pg_mapping* %100, null
  br i1 %101, label %102, label %200

102:                                              ; preds = %95
  store i32 0, i32* %8, align 4
  br label %103

103:                                              ; preds = %196, %102
  %104 = load i32, i32* %8, align 4
  %105 = load %struct.ceph_pg_mapping*, %struct.ceph_pg_mapping** %7, align 8
  %106 = getelementptr inbounds %struct.ceph_pg_mapping, %struct.ceph_pg_mapping* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp slt i32 %104, %108
  br i1 %109, label %110, label %199

110:                                              ; preds = %103
  %111 = load %struct.ceph_pg_mapping*, %struct.ceph_pg_mapping** %7, align 8
  %112 = getelementptr inbounds %struct.ceph_pg_mapping, %struct.ceph_pg_mapping* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i32**, i32*** %113, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32*, i32** %114, i64 %116
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %11, align 4
  %121 = load %struct.ceph_pg_mapping*, %struct.ceph_pg_mapping** %7, align 8
  %122 = getelementptr inbounds %struct.ceph_pg_mapping, %struct.ceph_pg_mapping* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  %124 = load i32**, i32*** %123, align 8
  %125 = load i32, i32* %8, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32*, i32** %124, i64 %126
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 1
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %9, align 4
  br label %131

131:                                              ; preds = %178, %110
  %132 = load i32, i32* %9, align 4
  %133 = load %struct.ceph_osds*, %struct.ceph_osds** %6, align 8
  %134 = getelementptr inbounds %struct.ceph_osds, %struct.ceph_osds* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = icmp slt i32 %132, %135
  br i1 %136, label %137, label %181

137:                                              ; preds = %131
  %138 = load %struct.ceph_osds*, %struct.ceph_osds** %6, align 8
  %139 = getelementptr inbounds %struct.ceph_osds, %struct.ceph_osds* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %9, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  store i32 %144, i32* %15, align 4
  %145 = load i32, i32* %15, align 4
  %146 = load i32, i32* %12, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %137
  store i32 1, i32* %14, align 4
  br label %181

149:                                              ; preds = %137
  %150 = load i32, i32* %15, align 4
  %151 = load i32, i32* %11, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %177

153:                                              ; preds = %149
  %154 = load i32, i32* %13, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %177

156:                                              ; preds = %153
  %157 = load i32, i32* %12, align 4
  %158 = load i32, i32* @CRUSH_ITEM_NONE, align 4
  %159 = icmp ne i32 %157, %158
  br i1 %159, label %160, label %175

160:                                              ; preds = %156
  %161 = load i32, i32* %12, align 4
  %162 = load %struct.ceph_osdmap*, %struct.ceph_osdmap** %4, align 8
  %163 = getelementptr inbounds %struct.ceph_osdmap, %struct.ceph_osdmap* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = icmp slt i32 %161, %164
  br i1 %165, label %166, label %175

166:                                              ; preds = %160
  %167 = load %struct.ceph_osdmap*, %struct.ceph_osdmap** %4, align 8
  %168 = getelementptr inbounds %struct.ceph_osdmap, %struct.ceph_osdmap* %167, i32 0, i32 1
  %169 = load i64*, i64** %168, align 8
  %170 = load i32, i32* %12, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i64, i64* %169, i64 %171
  %173 = load i64, i64* %172, align 8
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %177, label %175

175:                                              ; preds = %166, %160, %156
  %176 = load i32, i32* %9, align 4
  store i32 %176, i32* %13, align 4
  br label %177

177:                                              ; preds = %175, %166, %153, %149
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %9, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %9, align 4
  br label %131

181:                                              ; preds = %148, %131
  %182 = load i32, i32* %14, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %195, label %184

184:                                              ; preds = %181
  %185 = load i32, i32* %13, align 4
  %186 = icmp sge i32 %185, 0
  br i1 %186, label %187, label %195

187:                                              ; preds = %184
  %188 = load i32, i32* %12, align 4
  %189 = load %struct.ceph_osds*, %struct.ceph_osds** %6, align 8
  %190 = getelementptr inbounds %struct.ceph_osds, %struct.ceph_osds* %189, i32 0, i32 0
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %13, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  store i32 %188, i32* %194, align 4
  br label %195

195:                                              ; preds = %187, %184, %181
  br label %196

196:                                              ; preds = %195
  %197 = load i32, i32* %8, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %8, align 4
  br label %103

199:                                              ; preds = %103
  br label %200

200:                                              ; preds = %57, %199, %95
  ret void
}

declare dso_local %struct.ceph_pg_mapping* @lookup_pg_mapping(i32*, %struct.ceph_pg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
