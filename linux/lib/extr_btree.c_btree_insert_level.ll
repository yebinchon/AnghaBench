; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_btree.c_btree_insert_level.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_btree.c_btree_insert_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btree_head = type { i32, i32 }
%struct.btree_geo = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btree_head*, %struct.btree_geo*, i64*, i8*, i32, i32)* @btree_insert_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btree_insert_level(%struct.btree_head* %0, %struct.btree_geo* %1, i64* %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.btree_head*, align 8
  %9 = alloca %struct.btree_geo*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64*, align 8
  store %struct.btree_head* %0, %struct.btree_head** %8, align 8
  store %struct.btree_geo* %1, %struct.btree_geo** %9, align 8
  store i64* %2, i64** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %20 = load i8*, i8** %11, align 8
  %21 = icmp ne i8* %20, null
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load %struct.btree_head*, %struct.btree_head** %8, align 8
  %26 = getelementptr inbounds %struct.btree_head, %struct.btree_head* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %6
  %31 = load %struct.btree_head*, %struct.btree_head** %8, align 8
  %32 = load %struct.btree_geo*, %struct.btree_geo** %9, align 8
  %33 = load i32, i32* %13, align 4
  %34 = call i32 @btree_grow(%struct.btree_head* %31, %struct.btree_geo* %32, i32 %33)
  store i32 %34, i32* %18, align 4
  %35 = load i32, i32* %18, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* %18, align 4
  store i32 %38, i32* %7, align 4
  br label %237

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %39, %6
  br label %41

41:                                               ; preds = %190, %40
  %42 = load %struct.btree_head*, %struct.btree_head** %8, align 8
  %43 = load %struct.btree_geo*, %struct.btree_geo** %9, align 8
  %44 = load i64*, i64** %10, align 8
  %45 = load i32, i32* %12, align 4
  %46 = call i64* @find_level(%struct.btree_head* %42, %struct.btree_geo* %43, i64* %44, i32 %45)
  store i64* %46, i64** %14, align 8
  %47 = load %struct.btree_geo*, %struct.btree_geo** %9, align 8
  %48 = load i64*, i64** %14, align 8
  %49 = load i64*, i64** %10, align 8
  %50 = call i32 @getpos(%struct.btree_geo* %47, i64* %48, i64* %49)
  store i32 %50, i32* %16, align 4
  %51 = load %struct.btree_geo*, %struct.btree_geo** %9, align 8
  %52 = load i64*, i64** %14, align 8
  %53 = load i32, i32* %16, align 4
  %54 = call i32 @getfill(%struct.btree_geo* %51, i64* %52, i32 %53)
  store i32 %54, i32* %17, align 4
  %55 = load i32, i32* %16, align 4
  %56 = load i32, i32* %17, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %41
  %59 = load %struct.btree_geo*, %struct.btree_geo** %9, align 8
  %60 = load i64*, i64** %14, align 8
  %61 = load i32, i32* %16, align 4
  %62 = load i64*, i64** %10, align 8
  %63 = call i64 @keycmp(%struct.btree_geo* %59, i64* %60, i32 %61, i64* %62)
  %64 = icmp eq i64 %63, 0
  br label %65

65:                                               ; preds = %58, %41
  %66 = phi i1 [ false, %41 ], [ %64, %58 ]
  %67 = zext i1 %66 to i32
  %68 = call i32 @BUG_ON(i32 %67)
  %69 = load i32, i32* %17, align 4
  %70 = load %struct.btree_geo*, %struct.btree_geo** %9, align 8
  %71 = getelementptr inbounds %struct.btree_geo, %struct.btree_geo* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %69, %72
  br i1 %73, label %74, label %191

74:                                               ; preds = %65
  %75 = load %struct.btree_head*, %struct.btree_head** %8, align 8
  %76 = load i32, i32* %13, align 4
  %77 = call i64* @btree_node_alloc(%struct.btree_head* %75, i32 %76)
  store i64* %77, i64** %19, align 8
  %78 = load i64*, i64** %19, align 8
  %79 = icmp ne i64* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %74
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %7, align 4
  br label %237

83:                                               ; preds = %74
  %84 = load %struct.btree_head*, %struct.btree_head** %8, align 8
  %85 = load %struct.btree_geo*, %struct.btree_geo** %9, align 8
  %86 = load %struct.btree_geo*, %struct.btree_geo** %9, align 8
  %87 = load i64*, i64** %14, align 8
  %88 = load i32, i32* %17, align 4
  %89 = sdiv i32 %88, 2
  %90 = sub nsw i32 %89, 1
  %91 = call i64* @bkey(%struct.btree_geo* %86, i64* %87, i32 %90)
  %92 = load i64*, i64** %19, align 8
  %93 = bitcast i64* %92 to i8*
  %94 = load i32, i32* %12, align 4
  %95 = add nsw i32 %94, 1
  %96 = load i32, i32* %13, align 4
  %97 = call i32 @btree_insert_level(%struct.btree_head* %84, %struct.btree_geo* %85, i64* %91, i8* %93, i32 %95, i32 %96)
  store i32 %97, i32* %18, align 4
  %98 = load i32, i32* %18, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %83
  %101 = load i64*, i64** %19, align 8
  %102 = load %struct.btree_head*, %struct.btree_head** %8, align 8
  %103 = getelementptr inbounds %struct.btree_head, %struct.btree_head* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @mempool_free(i64* %101, i32 %104)
  %106 = load i32, i32* %18, align 4
  store i32 %106, i32* %7, align 4
  br label %237

107:                                              ; preds = %83
  store i32 0, i32* %15, align 4
  br label %108

108:                                              ; preds = %159, %107
  %109 = load i32, i32* %15, align 4
  %110 = load i32, i32* %17, align 4
  %111 = sdiv i32 %110, 2
  %112 = icmp slt i32 %109, %111
  br i1 %112, label %113, label %162

113:                                              ; preds = %108
  %114 = load %struct.btree_geo*, %struct.btree_geo** %9, align 8
  %115 = load i64*, i64** %19, align 8
  %116 = load i32, i32* %15, align 4
  %117 = load %struct.btree_geo*, %struct.btree_geo** %9, align 8
  %118 = load i64*, i64** %14, align 8
  %119 = load i32, i32* %15, align 4
  %120 = call i64* @bkey(%struct.btree_geo* %117, i64* %118, i32 %119)
  %121 = call i32 @setkey(%struct.btree_geo* %114, i64* %115, i32 %116, i64* %120)
  %122 = load %struct.btree_geo*, %struct.btree_geo** %9, align 8
  %123 = load i64*, i64** %19, align 8
  %124 = load i32, i32* %15, align 4
  %125 = load %struct.btree_geo*, %struct.btree_geo** %9, align 8
  %126 = load i64*, i64** %14, align 8
  %127 = load i32, i32* %15, align 4
  %128 = call i8* @bval(%struct.btree_geo* %125, i64* %126, i32 %127)
  %129 = call i32 @setval(%struct.btree_geo* %122, i64* %123, i32 %124, i8* %128)
  %130 = load %struct.btree_geo*, %struct.btree_geo** %9, align 8
  %131 = load i64*, i64** %14, align 8
  %132 = load i32, i32* %15, align 4
  %133 = load %struct.btree_geo*, %struct.btree_geo** %9, align 8
  %134 = load i64*, i64** %14, align 8
  %135 = load i32, i32* %15, align 4
  %136 = load i32, i32* %17, align 4
  %137 = sdiv i32 %136, 2
  %138 = add nsw i32 %135, %137
  %139 = call i64* @bkey(%struct.btree_geo* %133, i64* %134, i32 %138)
  %140 = call i32 @setkey(%struct.btree_geo* %130, i64* %131, i32 %132, i64* %139)
  %141 = load %struct.btree_geo*, %struct.btree_geo** %9, align 8
  %142 = load i64*, i64** %14, align 8
  %143 = load i32, i32* %15, align 4
  %144 = load %struct.btree_geo*, %struct.btree_geo** %9, align 8
  %145 = load i64*, i64** %14, align 8
  %146 = load i32, i32* %15, align 4
  %147 = load i32, i32* %17, align 4
  %148 = sdiv i32 %147, 2
  %149 = add nsw i32 %146, %148
  %150 = call i8* @bval(%struct.btree_geo* %144, i64* %145, i32 %149)
  %151 = call i32 @setval(%struct.btree_geo* %141, i64* %142, i32 %143, i8* %150)
  %152 = load %struct.btree_geo*, %struct.btree_geo** %9, align 8
  %153 = load i64*, i64** %14, align 8
  %154 = load i32, i32* %15, align 4
  %155 = load i32, i32* %17, align 4
  %156 = sdiv i32 %155, 2
  %157 = add nsw i32 %154, %156
  %158 = call i32 @clearpair(%struct.btree_geo* %152, i64* %153, i32 %157)
  br label %159

159:                                              ; preds = %113
  %160 = load i32, i32* %15, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %15, align 4
  br label %108

162:                                              ; preds = %108
  %163 = load i32, i32* %17, align 4
  %164 = and i32 %163, 1
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %190

166:                                              ; preds = %162
  %167 = load %struct.btree_geo*, %struct.btree_geo** %9, align 8
  %168 = load i64*, i64** %14, align 8
  %169 = load i32, i32* %15, align 4
  %170 = load %struct.btree_geo*, %struct.btree_geo** %9, align 8
  %171 = load i64*, i64** %14, align 8
  %172 = load i32, i32* %17, align 4
  %173 = sub nsw i32 %172, 1
  %174 = call i64* @bkey(%struct.btree_geo* %170, i64* %171, i32 %173)
  %175 = call i32 @setkey(%struct.btree_geo* %167, i64* %168, i32 %169, i64* %174)
  %176 = load %struct.btree_geo*, %struct.btree_geo** %9, align 8
  %177 = load i64*, i64** %14, align 8
  %178 = load i32, i32* %15, align 4
  %179 = load %struct.btree_geo*, %struct.btree_geo** %9, align 8
  %180 = load i64*, i64** %14, align 8
  %181 = load i32, i32* %17, align 4
  %182 = sub nsw i32 %181, 1
  %183 = call i8* @bval(%struct.btree_geo* %179, i64* %180, i32 %182)
  %184 = call i32 @setval(%struct.btree_geo* %176, i64* %177, i32 %178, i8* %183)
  %185 = load %struct.btree_geo*, %struct.btree_geo** %9, align 8
  %186 = load i64*, i64** %14, align 8
  %187 = load i32, i32* %17, align 4
  %188 = sub nsw i32 %187, 1
  %189 = call i32 @clearpair(%struct.btree_geo* %185, i64* %186, i32 %188)
  br label %190

190:                                              ; preds = %166, %162
  br label %41

191:                                              ; preds = %65
  %192 = load i32, i32* %17, align 4
  %193 = load %struct.btree_geo*, %struct.btree_geo** %9, align 8
  %194 = getelementptr inbounds %struct.btree_geo, %struct.btree_geo* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = icmp sge i32 %192, %195
  %197 = zext i1 %196 to i32
  %198 = call i32 @BUG_ON(i32 %197)
  %199 = load i32, i32* %17, align 4
  store i32 %199, i32* %15, align 4
  br label %200

200:                                              ; preds = %223, %191
  %201 = load i32, i32* %15, align 4
  %202 = load i32, i32* %16, align 4
  %203 = icmp sgt i32 %201, %202
  br i1 %203, label %204, label %226

204:                                              ; preds = %200
  %205 = load %struct.btree_geo*, %struct.btree_geo** %9, align 8
  %206 = load i64*, i64** %14, align 8
  %207 = load i32, i32* %15, align 4
  %208 = load %struct.btree_geo*, %struct.btree_geo** %9, align 8
  %209 = load i64*, i64** %14, align 8
  %210 = load i32, i32* %15, align 4
  %211 = sub nsw i32 %210, 1
  %212 = call i64* @bkey(%struct.btree_geo* %208, i64* %209, i32 %211)
  %213 = call i32 @setkey(%struct.btree_geo* %205, i64* %206, i32 %207, i64* %212)
  %214 = load %struct.btree_geo*, %struct.btree_geo** %9, align 8
  %215 = load i64*, i64** %14, align 8
  %216 = load i32, i32* %15, align 4
  %217 = load %struct.btree_geo*, %struct.btree_geo** %9, align 8
  %218 = load i64*, i64** %14, align 8
  %219 = load i32, i32* %15, align 4
  %220 = sub nsw i32 %219, 1
  %221 = call i8* @bval(%struct.btree_geo* %217, i64* %218, i32 %220)
  %222 = call i32 @setval(%struct.btree_geo* %214, i64* %215, i32 %216, i8* %221)
  br label %223

223:                                              ; preds = %204
  %224 = load i32, i32* %15, align 4
  %225 = add nsw i32 %224, -1
  store i32 %225, i32* %15, align 4
  br label %200

226:                                              ; preds = %200
  %227 = load %struct.btree_geo*, %struct.btree_geo** %9, align 8
  %228 = load i64*, i64** %14, align 8
  %229 = load i32, i32* %16, align 4
  %230 = load i64*, i64** %10, align 8
  %231 = call i32 @setkey(%struct.btree_geo* %227, i64* %228, i32 %229, i64* %230)
  %232 = load %struct.btree_geo*, %struct.btree_geo** %9, align 8
  %233 = load i64*, i64** %14, align 8
  %234 = load i32, i32* %16, align 4
  %235 = load i8*, i8** %11, align 8
  %236 = call i32 @setval(%struct.btree_geo* %232, i64* %233, i32 %234, i8* %235)
  store i32 0, i32* %7, align 4
  br label %237

237:                                              ; preds = %226, %100, %80, %37
  %238 = load i32, i32* %7, align 4
  ret i32 %238
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @btree_grow(%struct.btree_head*, %struct.btree_geo*, i32) #1

declare dso_local i64* @find_level(%struct.btree_head*, %struct.btree_geo*, i64*, i32) #1

declare dso_local i32 @getpos(%struct.btree_geo*, i64*, i64*) #1

declare dso_local i32 @getfill(%struct.btree_geo*, i64*, i32) #1

declare dso_local i64 @keycmp(%struct.btree_geo*, i64*, i32, i64*) #1

declare dso_local i64* @btree_node_alloc(%struct.btree_head*, i32) #1

declare dso_local i64* @bkey(%struct.btree_geo*, i64*, i32) #1

declare dso_local i32 @mempool_free(i64*, i32) #1

declare dso_local i32 @setkey(%struct.btree_geo*, i64*, i32, i64*) #1

declare dso_local i32 @setval(%struct.btree_geo*, i64*, i32, i8*) #1

declare dso_local i8* @bval(%struct.btree_geo*, i64*, i32) #1

declare dso_local i32 @clearpair(%struct.btree_geo*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
