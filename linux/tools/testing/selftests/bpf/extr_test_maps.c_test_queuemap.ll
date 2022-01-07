; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_maps.c_test_queuemap.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_maps.c_test_queuemap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BPF_MAP_TYPE_QUEUE = common dso_local global i32 0, align 4
@map_flags = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@BPF_F_NO_PREALLOC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to create queuemap '%s'!\0A\00", align 1
@E2BIG = common dso_local global i64 0, align 8
@BPF_EXIST = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @test_queuemap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_queuemap(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [48 x i64], align 16
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i32 32, i32* %5, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %18, %2
  %11 = load i32, i32* %9, align 4
  %12 = icmp slt i32 %11, 48
  br i1 %12, label %13, label %21

13:                                               ; preds = %10
  %14 = call i64 (...) @rand()
  %15 = load i32, i32* %9, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [48 x i64], [48 x i64]* %6, i64 0, i64 %16
  store i64 %14, i64* %17, align 8
  br label %18

18:                                               ; preds = %13
  %19 = load i32, i32* %9, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %9, align 4
  br label %10

21:                                               ; preds = %10
  %22 = load i32, i32* @BPF_MAP_TYPE_QUEUE, align 4
  %23 = load i32, i32* @map_flags, align 4
  %24 = call i32 @bpf_create_map(i32 %22, i32 4, i32 8, i32 32, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load i64, i64* @errno, align 8
  %29 = load i64, i64* @EINVAL, align 8
  %30 = icmp eq i64 %28, %29
  br label %31

31:                                               ; preds = %27, %21
  %32 = phi i1 [ false, %21 ], [ %30, %27 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i32, i32* @BPF_MAP_TYPE_QUEUE, align 4
  %36 = load i32, i32* @map_flags, align 4
  %37 = call i32 @bpf_create_map(i32 %35, i32 0, i32 8, i32 32, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* @map_flags, align 4
  %39 = load i32, i32* @BPF_F_NO_PREALLOC, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %31
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i64, i64* @errno, align 8
  %47 = load i64, i64* @EINVAL, align 8
  %48 = icmp eq i64 %46, %47
  br label %49

49:                                               ; preds = %45, %42
  %50 = phi i1 [ false, %42 ], [ %48, %45 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  br label %175

53:                                               ; preds = %31
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i64, i64* @errno, align 8
  %58 = call i8* @strerror(i64 %57)
  %59 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %58)
  %60 = call i32 @exit(i32 1) #3
  unreachable

61:                                               ; preds = %53
  store i32 0, i32* %9, align 4
  br label %62

62:                                               ; preds = %74, %61
  %63 = load i32, i32* %9, align 4
  %64 = icmp slt i32 %63, 32
  br i1 %64, label %65, label %77

65:                                               ; preds = %62
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [48 x i64], [48 x i64]* %6, i64 0, i64 %68
  %70 = call i32 @bpf_map_update_elem(i32 %66, i32* null, i64* %69, i32 0)
  %71 = icmp eq i32 %70, 0
  %72 = zext i1 %71 to i32
  %73 = call i32 @assert(i32 %72)
  br label %74

74:                                               ; preds = %65
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %62

77:                                               ; preds = %62
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @bpf_map_update_elem(i32 %78, i32* null, i64* %7, i32 0)
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load i64, i64* @errno, align 8
  %83 = load i64, i64* @E2BIG, align 8
  %84 = icmp eq i64 %82, %83
  br label %85

85:                                               ; preds = %81, %77
  %86 = phi i1 [ false, %77 ], [ %84, %81 ]
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert(i32 %87)
  %89 = load i32, i32* %8, align 4
  %90 = call i64 @bpf_map_lookup_elem(i32 %89, i32* null, i64* %7)
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %85
  %93 = load i64, i64* %7, align 8
  %94 = getelementptr inbounds [48 x i64], [48 x i64]* %6, i64 0, i64 0
  %95 = load i64, i64* %94, align 16
  %96 = icmp eq i64 %93, %95
  br label %97

97:                                               ; preds = %92, %85
  %98 = phi i1 [ false, %85 ], [ %96, %92 ]
  %99 = zext i1 %98 to i32
  %100 = call i32 @assert(i32 %99)
  store i32 32, i32* %9, align 4
  br label %101

101:                                              ; preds = %114, %97
  %102 = load i32, i32* %9, align 4
  %103 = icmp slt i32 %102, 48
  br i1 %103, label %104, label %117

104:                                              ; preds = %101
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [48 x i64], [48 x i64]* %6, i64 0, i64 %107
  %109 = load i32, i32* @BPF_EXIST, align 4
  %110 = call i32 @bpf_map_update_elem(i32 %105, i32* null, i64* %108, i32 %109)
  %111 = icmp eq i32 %110, 0
  %112 = zext i1 %111 to i32
  %113 = call i32 @assert(i32 %112)
  br label %114

114:                                              ; preds = %104
  %115 = load i32, i32* %9, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %9, align 4
  br label %101

117:                                              ; preds = %101
  store i32 16, i32* %9, align 4
  br label %118

118:                                              ; preds = %136, %117
  %119 = load i32, i32* %9, align 4
  %120 = icmp slt i32 %119, 48
  br i1 %120, label %121, label %139

121:                                              ; preds = %118
  %122 = load i32, i32* %8, align 4
  %123 = call i32 @bpf_map_lookup_and_delete_elem(i32 %122, i32* null, i64* %7)
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %121
  %126 = load i64, i64* %7, align 8
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [48 x i64], [48 x i64]* %6, i64 0, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = icmp eq i64 %126, %130
  br label %132

132:                                              ; preds = %125, %121
  %133 = phi i1 [ false, %121 ], [ %131, %125 ]
  %134 = zext i1 %133 to i32
  %135 = call i32 @assert(i32 %134)
  br label %136

136:                                              ; preds = %132
  %137 = load i32, i32* %9, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %9, align 4
  br label %118

139:                                              ; preds = %118
  %140 = load i32, i32* %8, align 4
  %141 = call i32 @bpf_map_lookup_and_delete_elem(i32 %140, i32* null, i64* %7)
  %142 = icmp eq i32 %141, -1
  br i1 %142, label %143, label %147

143:                                              ; preds = %139
  %144 = load i64, i64* @errno, align 8
  %145 = load i64, i64* @ENOENT, align 8
  %146 = icmp eq i64 %144, %145
  br label %147

147:                                              ; preds = %143, %139
  %148 = phi i1 [ false, %139 ], [ %146, %143 ]
  %149 = zext i1 %148 to i32
  %150 = call i32 @assert(i32 %149)
  %151 = load i32, i32* %8, align 4
  %152 = call i32 @bpf_map_delete_elem(i32 %151, i32* null)
  %153 = icmp eq i32 %152, -1
  br i1 %153, label %154, label %158

154:                                              ; preds = %147
  %155 = load i64, i64* @errno, align 8
  %156 = load i64, i64* @EINVAL, align 8
  %157 = icmp eq i64 %155, %156
  br label %158

158:                                              ; preds = %154, %147
  %159 = phi i1 [ false, %147 ], [ %157, %154 ]
  %160 = zext i1 %159 to i32
  %161 = call i32 @assert(i32 %160)
  %162 = load i32, i32* %8, align 4
  %163 = call i32 @bpf_map_get_next_key(i32 %162, i32* null, i32* null)
  %164 = icmp eq i32 %163, -1
  br i1 %164, label %165, label %169

165:                                              ; preds = %158
  %166 = load i64, i64* @errno, align 8
  %167 = load i64, i64* @EINVAL, align 8
  %168 = icmp eq i64 %166, %167
  br label %169

169:                                              ; preds = %165, %158
  %170 = phi i1 [ false, %158 ], [ %168, %165 ]
  %171 = zext i1 %170 to i32
  %172 = call i32 @assert(i32 %171)
  %173 = load i32, i32* %8, align 4
  %174 = call i32 @close(i32 %173)
  br label %175

175:                                              ; preds = %169, %49
  ret void
}

declare dso_local i64 @rand(...) #1

declare dso_local i32 @bpf_create_map(i32, i32, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @strerror(i64) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @bpf_map_update_elem(i32, i32*, i64*, i32) #1

declare dso_local i64 @bpf_map_lookup_elem(i32, i32*, i64*) #1

declare dso_local i32 @bpf_map_lookup_and_delete_elem(i32, i32*, i64*) #1

declare dso_local i32 @bpf_map_delete_elem(i32, i32*) #1

declare dso_local i32 @bpf_map_get_next_key(i32, i32*, i32*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
