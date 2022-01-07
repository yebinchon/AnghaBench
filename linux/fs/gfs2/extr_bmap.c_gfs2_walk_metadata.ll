; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_bmap.c_gfs2_walk_metadata.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_bmap.c_gfs2_walk_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.metapath = type { i32, i32, i32*, i32** }
%struct.gfs2_inode = type { i64 }
%struct.gfs2_sbd = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.metapath*, i32, i32 (%struct.metapath*, i32)*)* @gfs2_walk_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_walk_metadata(%struct.inode* %0, %struct.metapath* %1, i32 %2, i32 (%struct.metapath*, i32)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.metapath*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32 (%struct.metapath*, i32)*, align 8
  %10 = alloca %struct.gfs2_inode*, align 8
  %11 = alloca %struct.gfs2_sbd*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.metapath* %1, %struct.metapath** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 (%struct.metapath*, i32)* %3, i32 (%struct.metapath*, i32)** %9, align 8
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %19)
  store %struct.gfs2_inode* %20, %struct.gfs2_inode** %10, align 8
  %21 = load %struct.inode*, %struct.inode** %6, align 8
  %22 = call %struct.gfs2_sbd* @GFS2_SB(%struct.inode* %21)
  store %struct.gfs2_sbd* %22, %struct.gfs2_sbd** %11, align 8
  store i32 1, i32* %12, align 4
  %23 = load %struct.metapath*, %struct.metapath** %7, align 8
  %24 = getelementptr inbounds %struct.metapath, %struct.metapath* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %13, align 4
  br label %27

27:                                               ; preds = %56, %4
  %28 = load i32, i32* %13, align 4
  %29 = load %struct.metapath*, %struct.metapath** %7, align 8
  %30 = getelementptr inbounds %struct.metapath, %struct.metapath* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp uge i32 %28, %31
  br i1 %32, label %33, label %59

33:                                               ; preds = %27
  %34 = load %struct.metapath*, %struct.metapath** %7, align 8
  %35 = getelementptr inbounds %struct.metapath, %struct.metapath* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %13, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %12, align 4
  %42 = mul i32 %40, %41
  %43 = load i32, i32* %8, align 4
  %44 = add i32 %43, %42
  store i32 %44, i32* %8, align 4
  %45 = load %struct.metapath*, %struct.metapath** %7, align 8
  %46 = getelementptr inbounds %struct.metapath, %struct.metapath* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %13, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 0, i32* %50, align 4
  %51 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %11, align 8
  %52 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %12, align 4
  %55 = mul i32 %54, %53
  store i32 %55, i32* %12, align 4
  br label %56

56:                                               ; preds = %33
  %57 = load i32, i32* %13, align 4
  %58 = add i32 %57, -1
  store i32 %58, i32* %13, align 4
  br label %27

59:                                               ; preds = %27
  br label %60

60:                                               ; preds = %220, %59
  %61 = load %struct.metapath*, %struct.metapath** %7, align 8
  %62 = getelementptr inbounds %struct.metapath, %struct.metapath* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %13, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp uge i32 %68, 1
  br i1 %69, label %70, label %74

70:                                               ; preds = %60
  %71 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %11, align 8
  %72 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  br label %78

74:                                               ; preds = %60
  %75 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %11, align 8
  %76 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  br label %78

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %73, %70 ], [ %77, %74 ]
  %80 = load i32, i32* %15, align 4
  %81 = sub i32 %79, %80
  store i32 %81, i32* %17, align 4
  %82 = load i32, i32* %17, align 4
  %83 = load i32, i32* %12, align 4
  %84 = mul i32 %82, %83
  store i32 %84, i32* %18, align 4
  %85 = load i32, i32* %18, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp ugt i32 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %78
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %12, align 4
  %91 = call i32 @DIV_ROUND_UP_ULL(i32 %89, i32 %90)
  store i32 %91, i32* %17, align 4
  br label %92

92:                                               ; preds = %88, %78
  %93 = load i32 (%struct.metapath*, i32)*, i32 (%struct.metapath*, i32)** %9, align 8
  %94 = load %struct.metapath*, %struct.metapath** %7, align 8
  %95 = load i32, i32* %17, align 4
  %96 = call i32 %93(%struct.metapath* %94, i32 %95)
  store i32 %96, i32* %16, align 4
  %97 = load i32, i32* %16, align 4
  switch i32 %97, label %122 [
    i32 128, label %98
    i32 129, label %99
    i32 130, label %121
  ]

98:                                               ; preds = %92
  store i32 1, i32* %5, align 4
  br label %226

99:                                               ; preds = %92
  %100 = load %struct.metapath*, %struct.metapath** %7, align 8
  %101 = getelementptr inbounds %struct.metapath, %struct.metapath* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.metapath*, %struct.metapath** %7, align 8
  %104 = getelementptr inbounds %struct.metapath, %struct.metapath* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp eq i32 %102, %105
  %107 = zext i1 %106 to i32
  %108 = call i32 @BUG_ON(i32 %107)
  %109 = load %struct.metapath*, %struct.metapath** %7, align 8
  %110 = getelementptr inbounds %struct.metapath, %struct.metapath* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %13, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %15, align 4
  %117 = sub i32 %115, %116
  store i32 %117, i32* %17, align 4
  %118 = load i32, i32* %17, align 4
  %119 = load i32, i32* %12, align 4
  %120 = mul i32 %118, %119
  store i32 %120, i32* %18, align 4
  br label %122

121:                                              ; preds = %92
  br label %122

122:                                              ; preds = %92, %121, %99
  %123 = load i32, i32* %18, align 4
  %124 = load i32, i32* %8, align 4
  %125 = icmp uge i32 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %122
  br label %225

127:                                              ; preds = %122
  %128 = load i32, i32* %18, align 4
  %129 = load i32, i32* %8, align 4
  %130 = sub i32 %129, %128
  store i32 %130, i32* %8, align 4
  %131 = load i32, i32* %16, align 4
  %132 = icmp eq i32 %131, 129
  br i1 %132, label %133, label %134

133:                                              ; preds = %127
  br label %192

134:                                              ; preds = %127
  br label %135

135:                                              ; preds = %190, %134
  %136 = load %struct.metapath*, %struct.metapath** %7, align 8
  %137 = getelementptr inbounds %struct.metapath, %struct.metapath* %136, i32 0, i32 3
  %138 = load i32**, i32*** %137, align 8
  %139 = load i32, i32* %13, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds i32*, i32** %138, i64 %140
  %142 = load i32*, i32** %141, align 8
  %143 = call i32 @brelse(i32* %142)
  %144 = load %struct.metapath*, %struct.metapath** %7, align 8
  %145 = getelementptr inbounds %struct.metapath, %struct.metapath* %144, i32 0, i32 3
  %146 = load i32**, i32*** %145, align 8
  %147 = load i32, i32* %13, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds i32*, i32** %146, i64 %148
  store i32* null, i32** %149, align 8
  %150 = load %struct.metapath*, %struct.metapath** %7, align 8
  %151 = getelementptr inbounds %struct.metapath, %struct.metapath* %150, i32 0, i32 2
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %13, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  store i32 0, i32* %155, align 4
  %156 = load i32, i32* %13, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %135
  br label %225

159:                                              ; preds = %135
  %160 = load i32, i32* %13, align 4
  %161 = add i32 %160, -1
  store i32 %161, i32* %13, align 4
  %162 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %11, align 8
  %163 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* %12, align 4
  %166 = mul i32 %165, %164
  store i32 %166, i32* %12, align 4
  %167 = load %struct.metapath*, %struct.metapath** %7, align 8
  %168 = getelementptr inbounds %struct.metapath, %struct.metapath* %167, i32 0, i32 2
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %13, align 4
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = add i32 %173, 1
  store i32 %174, i32* %172, align 4
  %175 = load %struct.metapath*, %struct.metapath** %7, align 8
  %176 = getelementptr inbounds %struct.metapath, %struct.metapath* %175, i32 0, i32 2
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %13, align 4
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %11, align 8
  %183 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = icmp uge i32 %181, %184
  br i1 %185, label %186, label %191

186:                                              ; preds = %159
  %187 = load i32, i32* %13, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %190, label %189

189:                                              ; preds = %186
  br label %225

190:                                              ; preds = %186
  br label %135

191:                                              ; preds = %159
  br label %192

192:                                              ; preds = %191, %133
  %193 = load %struct.gfs2_inode*, %struct.gfs2_inode** %10, align 8
  %194 = load %struct.metapath*, %struct.metapath** %7, align 8
  %195 = load %struct.gfs2_inode*, %struct.gfs2_inode** %10, align 8
  %196 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = sub nsw i64 %197, 1
  %199 = call i32 @fillup_metapath(%struct.gfs2_inode* %193, %struct.metapath* %194, i64 %198)
  store i32 %199, i32* %14, align 4
  %200 = load i32, i32* %14, align 4
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %192
  %203 = load i32, i32* %14, align 4
  store i32 %203, i32* %5, align 4
  br label %226

204:                                              ; preds = %192
  %205 = load i32, i32* %14, align 4
  %206 = load i32, i32* %13, align 4
  %207 = add i32 %206, %205
  store i32 %207, i32* %13, align 4
  br label %208

208:                                              ; preds = %217, %204
  %209 = load i32, i32* %14, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %220

211:                                              ; preds = %208
  %212 = load i32, i32* %12, align 4
  %213 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %11, align 8
  %214 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @do_div(i32 %212, i32 %215)
  br label %217

217:                                              ; preds = %211
  %218 = load i32, i32* %14, align 4
  %219 = add nsw i32 %218, -1
  store i32 %219, i32* %14, align 4
  br label %208

220:                                              ; preds = %208
  %221 = load i32, i32* %13, align 4
  %222 = add i32 %221, 1
  %223 = load %struct.metapath*, %struct.metapath** %7, align 8
  %224 = getelementptr inbounds %struct.metapath, %struct.metapath* %223, i32 0, i32 1
  store i32 %222, i32* %224, align 4
  br label %60

225:                                              ; preds = %189, %158, %126
  store i32 0, i32* %5, align 4
  br label %226

226:                                              ; preds = %225, %202, %98
  %227 = load i32, i32* %5, align 4
  ret i32 %227
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.inode*) #1

declare dso_local i32 @DIV_ROUND_UP_ULL(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @brelse(i32*) #1

declare dso_local i32 @fillup_metapath(%struct.gfs2_inode*, %struct.metapath*, i64) #1

declare dso_local i32 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
