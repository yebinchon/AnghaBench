; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_readahead.c_ondemand_readahead.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_readahead.c_ondemand_readahead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32 }
%struct.file_ra_state = type { i64, i64, i64, i64, i64 }
%struct.file = type { i32 }
%struct.backing_dev_info = type { i64 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.address_space*, %struct.file_ra_state*, %struct.file*, i32, i64, i64)* @ondemand_readahead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ondemand_readahead(%struct.address_space* %0, %struct.file_ra_state* %1, %struct.file* %2, i32 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.address_space*, align 8
  %9 = alloca %struct.file_ra_state*, align 8
  %10 = alloca %struct.file*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.backing_dev_info*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.address_space* %0, %struct.address_space** %8, align 8
  store %struct.file_ra_state* %1, %struct.file_ra_state** %9, align 8
  store %struct.file* %2, %struct.file** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %19 = load %struct.address_space*, %struct.address_space** %8, align 8
  %20 = getelementptr inbounds %struct.address_space, %struct.address_space* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.backing_dev_info* @inode_to_bdi(i32 %21)
  store %struct.backing_dev_info* %22, %struct.backing_dev_info** %14, align 8
  %23 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %24 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %15, align 8
  %26 = load i64, i64* %13, align 8
  %27 = load i64, i64* %15, align 8
  %28 = icmp ugt i64 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %6
  %30 = load %struct.backing_dev_info*, %struct.backing_dev_info** %14, align 8
  %31 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %15, align 8
  %34 = icmp ugt i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load i64, i64* %13, align 8
  %37 = load %struct.backing_dev_info*, %struct.backing_dev_info** %14, align 8
  %38 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @min(i64 %36, i64 %39)
  store i64 %40, i64* %15, align 8
  br label %41

41:                                               ; preds = %35, %29, %6
  %42 = load i64, i64* %12, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  br label %164

45:                                               ; preds = %41
  %46 = load i64, i64* %12, align 8
  %47 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %48 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %51 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %49, %52
  %54 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %55 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = sub i64 %53, %56
  %58 = icmp eq i64 %46, %57
  br i1 %58, label %69, label %59

59:                                               ; preds = %45
  %60 = load i64, i64* %12, align 8
  %61 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %62 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %65 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = add i64 %63, %66
  %68 = icmp eq i64 %60, %67
  br i1 %68, label %69, label %88

69:                                               ; preds = %59, %45
  %70 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %71 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %74 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = add i64 %75, %72
  store i64 %76, i64* %74, align 8
  %77 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %78 = load i64, i64* %15, align 8
  %79 = call i8* @get_next_ra_size(%struct.file_ra_state* %77, i64 %78)
  %80 = ptrtoint i8* %79 to i64
  %81 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %82 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %81, i32 0, i32 2
  store i64 %80, i64* %82, align 8
  %83 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %84 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %87 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %86, i32 0, i32 3
  store i64 %85, i64* %87, align 8
  br label %192

88:                                               ; preds = %59
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %133

91:                                               ; preds = %88
  %92 = call i32 (...) @rcu_read_lock()
  %93 = load %struct.address_space*, %struct.address_space** %8, align 8
  %94 = load i64, i64* %12, align 8
  %95 = add i64 %94, 1
  %96 = load i64, i64* %15, align 8
  %97 = call i64 @page_cache_next_miss(%struct.address_space* %93, i64 %95, i64 %96)
  store i64 %97, i64* %18, align 8
  %98 = call i32 (...) @rcu_read_unlock()
  %99 = load i64, i64* %18, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %91
  %102 = load i64, i64* %18, align 8
  %103 = load i64, i64* %12, align 8
  %104 = sub i64 %102, %103
  %105 = load i64, i64* %15, align 8
  %106 = icmp ugt i64 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %101, %91
  store i64 0, i64* %7, align 8
  br label %241

108:                                              ; preds = %101
  %109 = load i64, i64* %18, align 8
  %110 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %111 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %110, i32 0, i32 1
  store i64 %109, i64* %111, align 8
  %112 = load i64, i64* %18, align 8
  %113 = load i64, i64* %12, align 8
  %114 = sub i64 %112, %113
  %115 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %116 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %115, i32 0, i32 2
  store i64 %114, i64* %116, align 8
  %117 = load i64, i64* %13, align 8
  %118 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %119 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = add i64 %120, %117
  store i64 %121, i64* %119, align 8
  %122 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %123 = load i64, i64* %15, align 8
  %124 = call i8* @get_next_ra_size(%struct.file_ra_state* %122, i64 %123)
  %125 = ptrtoint i8* %124 to i64
  %126 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %127 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %126, i32 0, i32 2
  store i64 %125, i64* %127, align 8
  %128 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %129 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %132 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %131, i32 0, i32 3
  store i64 %130, i64* %132, align 8
  br label %192

133:                                              ; preds = %88
  %134 = load i64, i64* %13, align 8
  %135 = load i64, i64* %15, align 8
  %136 = icmp ugt i64 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %133
  br label %164

138:                                              ; preds = %133
  %139 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %140 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %139, i32 0, i32 4
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @PAGE_SHIFT, align 8
  %143 = lshr i64 %141, %142
  store i64 %143, i64* %17, align 8
  %144 = load i64, i64* %12, align 8
  %145 = load i64, i64* %17, align 8
  %146 = sub i64 %144, %145
  %147 = icmp ule i64 %146, 1
  br i1 %147, label %148, label %149

148:                                              ; preds = %138
  br label %164

149:                                              ; preds = %138
  %150 = load %struct.address_space*, %struct.address_space** %8, align 8
  %151 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %152 = load i64, i64* %12, align 8
  %153 = load i64, i64* %13, align 8
  %154 = load i64, i64* %15, align 8
  %155 = call i64 @try_context_readahead(%struct.address_space* %150, %struct.file_ra_state* %151, i64 %152, i64 %153, i64 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %149
  br label %192

158:                                              ; preds = %149
  %159 = load %struct.address_space*, %struct.address_space** %8, align 8
  %160 = load %struct.file*, %struct.file** %10, align 8
  %161 = load i64, i64* %12, align 8
  %162 = load i64, i64* %13, align 8
  %163 = call i64 @__do_page_cache_readahead(%struct.address_space* %159, %struct.file* %160, i64 %161, i64 %162, i32 0)
  store i64 %163, i64* %7, align 8
  br label %241

164:                                              ; preds = %148, %137, %44
  %165 = load i64, i64* %12, align 8
  %166 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %167 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %166, i32 0, i32 1
  store i64 %165, i64* %167, align 8
  %168 = load i64, i64* %13, align 8
  %169 = load i64, i64* %15, align 8
  %170 = call i64 @get_init_ra_size(i64 %168, i64 %169)
  %171 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %172 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %171, i32 0, i32 2
  store i64 %170, i64* %172, align 8
  %173 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %174 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* %13, align 8
  %177 = icmp ugt i64 %175, %176
  br i1 %177, label %178, label %184

178:                                              ; preds = %164
  %179 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %180 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* %13, align 8
  %183 = sub i64 %181, %182
  br label %188

184:                                              ; preds = %164
  %185 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %186 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  br label %188

188:                                              ; preds = %184, %178
  %189 = phi i64 [ %183, %178 ], [ %187, %184 ]
  %190 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %191 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %190, i32 0, i32 3
  store i64 %189, i64* %191, align 8
  br label %192

192:                                              ; preds = %188, %157, %108, %69
  %193 = load i64, i64* %12, align 8
  %194 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %195 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = icmp eq i64 %193, %196
  br i1 %197, label %198, label %236

198:                                              ; preds = %192
  %199 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %200 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %199, i32 0, i32 2
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %203 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %202, i32 0, i32 3
  %204 = load i64, i64* %203, align 8
  %205 = icmp eq i64 %201, %204
  br i1 %205, label %206, label %236

206:                                              ; preds = %198
  %207 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %208 = load i64, i64* %15, align 8
  %209 = call i8* @get_next_ra_size(%struct.file_ra_state* %207, i64 %208)
  %210 = ptrtoint i8* %209 to i64
  store i64 %210, i64* %16, align 8
  %211 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %212 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %211, i32 0, i32 2
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* %16, align 8
  %215 = add i64 %213, %214
  %216 = load i64, i64* %15, align 8
  %217 = icmp ule i64 %215, %216
  br i1 %217, label %218, label %227

218:                                              ; preds = %206
  %219 = load i64, i64* %16, align 8
  %220 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %221 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %220, i32 0, i32 3
  store i64 %219, i64* %221, align 8
  %222 = load i64, i64* %16, align 8
  %223 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %224 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %223, i32 0, i32 2
  %225 = load i64, i64* %224, align 8
  %226 = add i64 %225, %222
  store i64 %226, i64* %224, align 8
  br label %235

227:                                              ; preds = %206
  %228 = load i64, i64* %15, align 8
  %229 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %230 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %229, i32 0, i32 2
  store i64 %228, i64* %230, align 8
  %231 = load i64, i64* %15, align 8
  %232 = lshr i64 %231, 1
  %233 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %234 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %233, i32 0, i32 3
  store i64 %232, i64* %234, align 8
  br label %235

235:                                              ; preds = %227, %218
  br label %236

236:                                              ; preds = %235, %198, %192
  %237 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %238 = load %struct.address_space*, %struct.address_space** %8, align 8
  %239 = load %struct.file*, %struct.file** %10, align 8
  %240 = call i64 @ra_submit(%struct.file_ra_state* %237, %struct.address_space* %238, %struct.file* %239)
  store i64 %240, i64* %7, align 8
  br label %241

241:                                              ; preds = %236, %158, %107
  %242 = load i64, i64* %7, align 8
  ret i64 %242
}

declare dso_local %struct.backing_dev_info* @inode_to_bdi(i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i8* @get_next_ra_size(%struct.file_ra_state*, i64) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i64 @page_cache_next_miss(%struct.address_space*, i64, i64) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @try_context_readahead(%struct.address_space*, %struct.file_ra_state*, i64, i64, i64) #1

declare dso_local i64 @__do_page_cache_readahead(%struct.address_space*, %struct.file*, i64, i64, i32) #1

declare dso_local i64 @get_init_ra_size(i64, i64) #1

declare dso_local i64 @ra_submit(%struct.file_ra_state*, %struct.address_space*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
