; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_slob.c_slob_free.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_slob.c_slob_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.page = type { i32, i8* }

@slob_lock = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@SLOB_BREAK1 = common dso_local global i32 0, align 4
@free_slob_small = common dso_local global %struct.list_head zeroinitializer, align 4
@SLOB_BREAK2 = common dso_local global i32 0, align 4
@free_slob_medium = common dso_local global %struct.list_head zeroinitializer, align 4
@free_slob_large = common dso_local global %struct.list_head zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @slob_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slob_free(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.page*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.list_head*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i8*, i8** %3, align 8
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @ZERO_OR_NULL_PTR(i8* %13)
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %205

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load i8*, i8** %3, align 8
  %25 = call %struct.page* @virt_to_page(i8* %24)
  store %struct.page* %25, %struct.page** %5, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @SLOB_UNITS(i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i64, i64* %10, align 8
  %29 = call i32 @spin_lock_irqsave(i32* @slob_lock, i64 %28)
  %30 = load %struct.page*, %struct.page** %5, align 8
  %31 = getelementptr inbounds %struct.page, %struct.page* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %32, %33
  %35 = load i32, i32* @PAGE_SIZE, align 4
  %36 = call i32 @SLOB_UNITS(i32 %35)
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %54

38:                                               ; preds = %18
  %39 = load %struct.page*, %struct.page** %5, align 8
  %40 = call i64 @slob_page_free(%struct.page* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load %struct.page*, %struct.page** %5, align 8
  %44 = call i32 @clear_slob_page_free(%struct.page* %43)
  br label %45

45:                                               ; preds = %42, %38
  %46 = load i64, i64* %10, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* @slob_lock, i64 %46)
  %48 = load %struct.page*, %struct.page** %5, align 8
  %49 = call i32 @__ClearPageSlab(%struct.page* %48)
  %50 = load %struct.page*, %struct.page** %5, align 8
  %51 = call i32 @page_mapcount_reset(%struct.page* %50)
  %52 = load i8*, i8** %8, align 8
  %53 = call i32 @slob_free_pages(i8* %52, i32 0)
  br label %205

54:                                               ; preds = %18
  %55 = load %struct.page*, %struct.page** %5, align 8
  %56 = call i64 @slob_page_free(%struct.page* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %92, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.page*, %struct.page** %5, align 8
  %61 = getelementptr inbounds %struct.page, %struct.page* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = load %struct.page*, %struct.page** %5, align 8
  %64 = getelementptr inbounds %struct.page, %struct.page* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load i8*, i8** %8, align 8
  %68 = load i32, i32* @PAGE_SIZE, align 4
  %69 = call i32 @SLOB_UNITS(i32 %68)
  %70 = sext i32 %69 to i64
  %71 = getelementptr i8, i8* %67, i64 %70
  %72 = ptrtoint i8* %71 to i64
  %73 = load i64, i64* @PAGE_MASK, align 8
  %74 = and i64 %72, %73
  %75 = inttoptr i64 %74 to i8*
  %76 = call i32 @set_slob(i8* %65, i32 %66, i8* %75)
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @SLOB_BREAK1, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %58
  store %struct.list_head* @free_slob_small, %struct.list_head** %11, align 8
  br label %88

81:                                               ; preds = %58
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* @SLOB_BREAK2, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store %struct.list_head* @free_slob_medium, %struct.list_head** %11, align 8
  br label %87

86:                                               ; preds = %81
  store %struct.list_head* @free_slob_large, %struct.list_head** %11, align 8
  br label %87

87:                                               ; preds = %86, %85
  br label %88

88:                                               ; preds = %87, %80
  %89 = load %struct.page*, %struct.page** %5, align 8
  %90 = load %struct.list_head*, %struct.list_head** %11, align 8
  %91 = call i32 @set_slob_page_free(%struct.page* %89, %struct.list_head* %90)
  br label %202

92:                                               ; preds = %54
  %93 = load i32, i32* %9, align 4
  %94 = load %struct.page*, %struct.page** %5, align 8
  %95 = getelementptr inbounds %struct.page, %struct.page* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, %93
  store i32 %97, i32* %95, align 8
  %98 = load i8*, i8** %8, align 8
  %99 = load %struct.page*, %struct.page** %5, align 8
  %100 = getelementptr inbounds %struct.page, %struct.page* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = icmp ult i8* %98, %101
  br i1 %102, label %103, label %135

103:                                              ; preds = %92
  %104 = load i8*, i8** %8, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr i8, i8* %104, i64 %106
  %108 = load %struct.page*, %struct.page** %5, align 8
  %109 = getelementptr inbounds %struct.page, %struct.page* %108, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  %111 = icmp eq i8* %107, %110
  br i1 %111, label %112, label %125

112:                                              ; preds = %103
  %113 = load %struct.page*, %struct.page** %5, align 8
  %114 = getelementptr inbounds %struct.page, %struct.page* %113, i32 0, i32 1
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 @slob_units(i8* %115)
  %117 = load i32, i32* %9, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %9, align 4
  %119 = load %struct.page*, %struct.page** %5, align 8
  %120 = getelementptr inbounds %struct.page, %struct.page* %119, i32 0, i32 1
  %121 = load i8*, i8** %120, align 8
  %122 = call i8* @slob_next(i8* %121)
  %123 = load %struct.page*, %struct.page** %5, align 8
  %124 = getelementptr inbounds %struct.page, %struct.page* %123, i32 0, i32 1
  store i8* %122, i8** %124, align 8
  br label %125

125:                                              ; preds = %112, %103
  %126 = load i8*, i8** %8, align 8
  %127 = load i32, i32* %9, align 4
  %128 = load %struct.page*, %struct.page** %5, align 8
  %129 = getelementptr inbounds %struct.page, %struct.page* %128, i32 0, i32 1
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 @set_slob(i8* %126, i32 %127, i8* %130)
  %132 = load i8*, i8** %8, align 8
  %133 = load %struct.page*, %struct.page** %5, align 8
  %134 = getelementptr inbounds %struct.page, %struct.page* %133, i32 0, i32 1
  store i8* %132, i8** %134, align 8
  br label %201

135:                                              ; preds = %92
  %136 = load %struct.page*, %struct.page** %5, align 8
  %137 = getelementptr inbounds %struct.page, %struct.page* %136, i32 0, i32 1
  %138 = load i8*, i8** %137, align 8
  store i8* %138, i8** %6, align 8
  %139 = load i8*, i8** %6, align 8
  %140 = call i8* @slob_next(i8* %139)
  store i8* %140, i8** %7, align 8
  br label %141

141:                                              ; preds = %145, %135
  %142 = load i8*, i8** %8, align 8
  %143 = load i8*, i8** %7, align 8
  %144 = icmp ugt i8* %142, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %141
  %146 = load i8*, i8** %7, align 8
  store i8* %146, i8** %6, align 8
  %147 = load i8*, i8** %6, align 8
  %148 = call i8* @slob_next(i8* %147)
  store i8* %148, i8** %7, align 8
  br label %141

149:                                              ; preds = %141
  %150 = load i8*, i8** %6, align 8
  %151 = call i32 @slob_last(i8* %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %170, label %153

153:                                              ; preds = %149
  %154 = load i8*, i8** %8, align 8
  %155 = load i32, i32* %9, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr i8, i8* %154, i64 %156
  %158 = load i8*, i8** %7, align 8
  %159 = icmp eq i8* %157, %158
  br i1 %159, label %160, label %170

160:                                              ; preds = %153
  %161 = load i8*, i8** %7, align 8
  %162 = call i32 @slob_units(i8* %161)
  %163 = load i32, i32* %9, align 4
  %164 = add nsw i32 %163, %162
  store i32 %164, i32* %9, align 4
  %165 = load i8*, i8** %8, align 8
  %166 = load i32, i32* %9, align 4
  %167 = load i8*, i8** %7, align 8
  %168 = call i8* @slob_next(i8* %167)
  %169 = call i32 @set_slob(i8* %165, i32 %166, i8* %168)
  br label %175

170:                                              ; preds = %153, %149
  %171 = load i8*, i8** %8, align 8
  %172 = load i32, i32* %9, align 4
  %173 = load i8*, i8** %7, align 8
  %174 = call i32 @set_slob(i8* %171, i32 %172, i8* %173)
  br label %175

175:                                              ; preds = %170, %160
  %176 = load i8*, i8** %6, align 8
  %177 = load i8*, i8** %6, align 8
  %178 = call i32 @slob_units(i8* %177)
  %179 = sext i32 %178 to i64
  %180 = getelementptr i8, i8* %176, i64 %179
  %181 = load i8*, i8** %8, align 8
  %182 = icmp eq i8* %180, %181
  br i1 %182, label %183, label %194

183:                                              ; preds = %175
  %184 = load i8*, i8** %8, align 8
  %185 = call i32 @slob_units(i8* %184)
  %186 = load i8*, i8** %6, align 8
  %187 = call i32 @slob_units(i8* %186)
  %188 = add nsw i32 %185, %187
  store i32 %188, i32* %9, align 4
  %189 = load i8*, i8** %6, align 8
  %190 = load i32, i32* %9, align 4
  %191 = load i8*, i8** %8, align 8
  %192 = call i8* @slob_next(i8* %191)
  %193 = call i32 @set_slob(i8* %189, i32 %190, i8* %192)
  br label %200

194:                                              ; preds = %175
  %195 = load i8*, i8** %6, align 8
  %196 = load i8*, i8** %6, align 8
  %197 = call i32 @slob_units(i8* %196)
  %198 = load i8*, i8** %8, align 8
  %199 = call i32 @set_slob(i8* %195, i32 %197, i8* %198)
  br label %200

200:                                              ; preds = %194, %183
  br label %201

201:                                              ; preds = %200, %125
  br label %202

202:                                              ; preds = %201, %88
  %203 = load i64, i64* %10, align 8
  %204 = call i32 @spin_unlock_irqrestore(i32* @slob_lock, i64 %203)
  br label %205

205:                                              ; preds = %202, %45, %17
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ZERO_OR_NULL_PTR(i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.page* @virt_to_page(i8*) #1

declare dso_local i32 @SLOB_UNITS(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @slob_page_free(%struct.page*) #1

declare dso_local i32 @clear_slob_page_free(%struct.page*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @__ClearPageSlab(%struct.page*) #1

declare dso_local i32 @page_mapcount_reset(%struct.page*) #1

declare dso_local i32 @slob_free_pages(i8*, i32) #1

declare dso_local i32 @set_slob(i8*, i32, i8*) #1

declare dso_local i32 @set_slob_page_free(%struct.page*, %struct.list_head*) #1

declare dso_local i32 @slob_units(i8*) #1

declare dso_local i8* @slob_next(i8*) #1

declare dso_local i32 @slob_last(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
