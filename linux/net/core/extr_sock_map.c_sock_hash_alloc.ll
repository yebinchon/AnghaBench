; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_sock_map.c_sock_hash_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_sock_map.c_sock_hash_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map = type { i32, i32, i32 }
%union.bpf_attr = type { i64 }
%struct.bpf_htab = type { i32, %struct.bpf_map, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@SOCK_CREATE_FLAG_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MAX_BPF_STACK = common dso_local global i64 0, align 8
@E2BIG = common dso_local global i32 0, align 4
@GFP_USER = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@U32_MAX = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bpf_map* (%union.bpf_attr*)* @sock_hash_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bpf_map* @sock_hash_alloc(%union.bpf_attr* %0) #0 {
  %2 = alloca %struct.bpf_map*, align 8
  %3 = alloca %union.bpf_attr*, align 8
  %4 = alloca %struct.bpf_htab*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %union.bpf_attr* %0, %union.bpf_attr** %3, align 8
  %8 = load i32, i32* @CAP_NET_ADMIN, align 4
  %9 = call i32 @capable(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @EPERM, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.bpf_map* @ERR_PTR(i32 %13)
  store %struct.bpf_map* %14, %struct.bpf_map** %2, align 8
  br label %179

15:                                               ; preds = %1
  %16 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %17 = bitcast %union.bpf_attr* %16 to i64*
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %38, label %20

20:                                               ; preds = %15
  %21 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %22 = bitcast %union.bpf_attr* %21 to i64*
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %20
  %26 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %27 = bitcast %union.bpf_attr* %26 to i32*
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 4
  br i1 %29, label %38, label %30

30:                                               ; preds = %25
  %31 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %32 = bitcast %union.bpf_attr* %31 to i32*
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @SOCK_CREATE_FLAG_MASK, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %30, %25, %20, %15
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  %41 = call %struct.bpf_map* @ERR_PTR(i32 %40)
  store %struct.bpf_map* %41, %struct.bpf_map** %2, align 8
  br label %179

42:                                               ; preds = %30
  %43 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %44 = bitcast %union.bpf_attr* %43 to i64*
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @MAX_BPF_STACK, align 8
  %47 = icmp sgt i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load i32, i32* @E2BIG, align 4
  %50 = sub nsw i32 0, %49
  %51 = call %struct.bpf_map* @ERR_PTR(i32 %50)
  store %struct.bpf_map* %51, %struct.bpf_map** %2, align 8
  br label %179

52:                                               ; preds = %42
  %53 = load i32, i32* @GFP_USER, align 4
  %54 = call %struct.bpf_htab* @kzalloc(i32 32, i32 %53)
  store %struct.bpf_htab* %54, %struct.bpf_htab** %4, align 8
  %55 = load %struct.bpf_htab*, %struct.bpf_htab** %4, align 8
  %56 = icmp ne %struct.bpf_htab* %55, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  %60 = call %struct.bpf_map* @ERR_PTR(i32 %59)
  store %struct.bpf_map* %60, %struct.bpf_map** %2, align 8
  br label %179

61:                                               ; preds = %52
  %62 = load %struct.bpf_htab*, %struct.bpf_htab** %4, align 8
  %63 = getelementptr inbounds %struct.bpf_htab, %struct.bpf_htab* %62, i32 0, i32 1
  %64 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %65 = call i32 @bpf_map_init_from_attr(%struct.bpf_map* %63, %union.bpf_attr* %64)
  %66 = load %struct.bpf_htab*, %struct.bpf_htab** %4, align 8
  %67 = getelementptr inbounds %struct.bpf_htab, %struct.bpf_htab* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @roundup_pow_of_two(i32 %69)
  %71 = load %struct.bpf_htab*, %struct.bpf_htab** %4, align 8
  %72 = getelementptr inbounds %struct.bpf_htab, %struct.bpf_htab* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.bpf_htab*, %struct.bpf_htab** %4, align 8
  %74 = getelementptr inbounds %struct.bpf_htab, %struct.bpf_htab* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @round_up(i32 %76, i32 8)
  %78 = add i64 4, %77
  %79 = load %struct.bpf_htab*, %struct.bpf_htab** %4, align 8
  %80 = getelementptr inbounds %struct.bpf_htab, %struct.bpf_htab* %79, i32 0, i32 3
  store i64 %78, i64* %80, align 8
  %81 = load %struct.bpf_htab*, %struct.bpf_htab** %4, align 8
  %82 = getelementptr inbounds %struct.bpf_htab, %struct.bpf_htab* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %94, label %85

85:                                               ; preds = %61
  %86 = load %struct.bpf_htab*, %struct.bpf_htab** %4, align 8
  %87 = getelementptr inbounds %struct.bpf_htab, %struct.bpf_htab* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = load i32, i32* @U32_MAX, align 4
  %91 = sext i32 %90 to i64
  %92 = udiv i64 %91, 4
  %93 = icmp ugt i64 %89, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %85, %61
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %6, align 4
  br label %174

97:                                               ; preds = %85
  %98 = load %struct.bpf_htab*, %struct.bpf_htab** %4, align 8
  %99 = getelementptr inbounds %struct.bpf_htab, %struct.bpf_htab* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = mul i64 %101, 4
  %103 = load %struct.bpf_htab*, %struct.bpf_htab** %4, align 8
  %104 = getelementptr inbounds %struct.bpf_htab, %struct.bpf_htab* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = trunc i64 %105 to i32
  %107 = load %struct.bpf_htab*, %struct.bpf_htab** %4, align 8
  %108 = getelementptr inbounds %struct.bpf_htab, %struct.bpf_htab* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = mul nsw i32 %106, %110
  %112 = sext i32 %111 to i64
  %113 = add i64 %102, %112
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %7, align 4
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* @U32_MAX, align 4
  %117 = load i32, i32* @PAGE_SIZE, align 4
  %118 = sub nsw i32 %116, %117
  %119 = icmp sge i32 %115, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %97
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %6, align 4
  br label %174

123:                                              ; preds = %97
  %124 = load %struct.bpf_htab*, %struct.bpf_htab** %4, align 8
  %125 = getelementptr inbounds %struct.bpf_htab, %struct.bpf_htab* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = sext i32 %126 to i64
  %128 = mul i64 %127, 4
  %129 = trunc i64 %128 to i32
  %130 = load %struct.bpf_htab*, %struct.bpf_htab** %4, align 8
  %131 = getelementptr inbounds %struct.bpf_htab, %struct.bpf_htab* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call %struct.TYPE_2__* @bpf_map_area_alloc(i32 %129, i32 %133)
  %135 = load %struct.bpf_htab*, %struct.bpf_htab** %4, align 8
  %136 = getelementptr inbounds %struct.bpf_htab, %struct.bpf_htab* %135, i32 0, i32 2
  store %struct.TYPE_2__* %134, %struct.TYPE_2__** %136, align 8
  %137 = load %struct.bpf_htab*, %struct.bpf_htab** %4, align 8
  %138 = getelementptr inbounds %struct.bpf_htab, %struct.bpf_htab* %137, i32 0, i32 2
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = icmp ne %struct.TYPE_2__* %139, null
  br i1 %140, label %144, label %141

141:                                              ; preds = %123
  %142 = load i32, i32* @ENOMEM, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %6, align 4
  br label %174

144:                                              ; preds = %123
  store i32 0, i32* %5, align 4
  br label %145

145:                                              ; preds = %168, %144
  %146 = load i32, i32* %5, align 4
  %147 = load %struct.bpf_htab*, %struct.bpf_htab** %4, align 8
  %148 = getelementptr inbounds %struct.bpf_htab, %struct.bpf_htab* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = icmp slt i32 %146, %149
  br i1 %150, label %151, label %171

151:                                              ; preds = %145
  %152 = load %struct.bpf_htab*, %struct.bpf_htab** %4, align 8
  %153 = getelementptr inbounds %struct.bpf_htab, %struct.bpf_htab* %152, i32 0, i32 2
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %153, align 8
  %155 = load i32, i32* %5, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 1
  %159 = call i32 @INIT_HLIST_HEAD(i32* %158)
  %160 = load %struct.bpf_htab*, %struct.bpf_htab** %4, align 8
  %161 = getelementptr inbounds %struct.bpf_htab, %struct.bpf_htab* %160, i32 0, i32 2
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** %161, align 8
  %163 = load i32, i32* %5, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 0
  %167 = call i32 @raw_spin_lock_init(i32* %166)
  br label %168

168:                                              ; preds = %151
  %169 = load i32, i32* %5, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %5, align 4
  br label %145

171:                                              ; preds = %145
  %172 = load %struct.bpf_htab*, %struct.bpf_htab** %4, align 8
  %173 = getelementptr inbounds %struct.bpf_htab, %struct.bpf_htab* %172, i32 0, i32 1
  store %struct.bpf_map* %173, %struct.bpf_map** %2, align 8
  br label %179

174:                                              ; preds = %141, %120, %94
  %175 = load %struct.bpf_htab*, %struct.bpf_htab** %4, align 8
  %176 = call i32 @kfree(%struct.bpf_htab* %175)
  %177 = load i32, i32* %6, align 4
  %178 = call %struct.bpf_map* @ERR_PTR(i32 %177)
  store %struct.bpf_map* %178, %struct.bpf_map** %2, align 8
  br label %179

179:                                              ; preds = %174, %171, %57, %48, %38, %11
  %180 = load %struct.bpf_map*, %struct.bpf_map** %2, align 8
  ret %struct.bpf_map* %180
}

declare dso_local i32 @capable(i32) #1

declare dso_local %struct.bpf_map* @ERR_PTR(i32) #1

declare dso_local %struct.bpf_htab* @kzalloc(i32, i32) #1

declare dso_local i32 @bpf_map_init_from_attr(%struct.bpf_map*, %union.bpf_attr*) #1

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i64 @round_up(i32, i32) #1

declare dso_local %struct.TYPE_2__* @bpf_map_area_alloc(i32, i32) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

declare dso_local i32 @raw_spin_lock_init(i32*) #1

declare dso_local i32 @kfree(%struct.bpf_htab*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
