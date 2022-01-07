; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_maps.c_test_stackmap.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_maps.c_test_stackmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BPF_MAP_TYPE_STACK = common dso_local global i32 0, align 4
@map_flags = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@BPF_F_NO_PREALLOC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to create stackmap '%s'!\0A\00", align 1
@E2BIG = common dso_local global i64 0, align 8
@BPF_EXIST = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @test_stackmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_stackmap(i32 %0, i8* %1) #0 {
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
  %22 = load i32, i32* @BPF_MAP_TYPE_STACK, align 4
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
  %35 = load i32, i32* @BPF_MAP_TYPE_STACK, align 4
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
  br label %178

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
  br i1 %91, label %92, label %100

92:                                               ; preds = %85
  %93 = load i64, i64* %7, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sub nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [48 x i64], [48 x i64]* %6, i64 0, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %93, %98
  br label %100

100:                                              ; preds = %92, %85
  %101 = phi i1 [ false, %85 ], [ %99, %92 ]
  %102 = zext i1 %101 to i32
  %103 = call i32 @assert(i32 %102)
  store i32 32, i32* %9, align 4
  br label %104

104:                                              ; preds = %117, %100
  %105 = load i32, i32* %9, align 4
  %106 = icmp slt i32 %105, 48
  br i1 %106, label %107, label %120

107:                                              ; preds = %104
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [48 x i64], [48 x i64]* %6, i64 0, i64 %110
  %112 = load i32, i32* @BPF_EXIST, align 4
  %113 = call i32 @bpf_map_update_elem(i32 %108, i32* null, i64* %111, i32 %112)
  %114 = icmp eq i32 %113, 0
  %115 = zext i1 %114 to i32
  %116 = call i32 @assert(i32 %115)
  br label %117

117:                                              ; preds = %107
  %118 = load i32, i32* %9, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %9, align 4
  br label %104

120:                                              ; preds = %104
  store i32 47, i32* %9, align 4
  br label %121

121:                                              ; preds = %139, %120
  %122 = load i32, i32* %9, align 4
  %123 = icmp sge i32 %122, 16
  br i1 %123, label %124, label %142

124:                                              ; preds = %121
  %125 = load i32, i32* %8, align 4
  %126 = call i32 @bpf_map_lookup_and_delete_elem(i32 %125, i32* null, i64* %7)
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %124
  %129 = load i64, i64* %7, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [48 x i64], [48 x i64]* %6, i64 0, i64 %131
  %133 = load i64, i64* %132, align 8
  %134 = icmp eq i64 %129, %133
  br label %135

135:                                              ; preds = %128, %124
  %136 = phi i1 [ false, %124 ], [ %134, %128 ]
  %137 = zext i1 %136 to i32
  %138 = call i32 @assert(i32 %137)
  br label %139

139:                                              ; preds = %135
  %140 = load i32, i32* %9, align 4
  %141 = add nsw i32 %140, -1
  store i32 %141, i32* %9, align 4
  br label %121

142:                                              ; preds = %121
  %143 = load i32, i32* %8, align 4
  %144 = call i32 @bpf_map_lookup_and_delete_elem(i32 %143, i32* null, i64* %7)
  %145 = icmp eq i32 %144, -1
  br i1 %145, label %146, label %150

146:                                              ; preds = %142
  %147 = load i64, i64* @errno, align 8
  %148 = load i64, i64* @ENOENT, align 8
  %149 = icmp eq i64 %147, %148
  br label %150

150:                                              ; preds = %146, %142
  %151 = phi i1 [ false, %142 ], [ %149, %146 ]
  %152 = zext i1 %151 to i32
  %153 = call i32 @assert(i32 %152)
  %154 = load i32, i32* %8, align 4
  %155 = call i32 @bpf_map_delete_elem(i32 %154, i32* null)
  %156 = icmp eq i32 %155, -1
  br i1 %156, label %157, label %161

157:                                              ; preds = %150
  %158 = load i64, i64* @errno, align 8
  %159 = load i64, i64* @EINVAL, align 8
  %160 = icmp eq i64 %158, %159
  br label %161

161:                                              ; preds = %157, %150
  %162 = phi i1 [ false, %150 ], [ %160, %157 ]
  %163 = zext i1 %162 to i32
  %164 = call i32 @assert(i32 %163)
  %165 = load i32, i32* %8, align 4
  %166 = call i32 @bpf_map_get_next_key(i32 %165, i32* null, i32* null)
  %167 = icmp eq i32 %166, -1
  br i1 %167, label %168, label %172

168:                                              ; preds = %161
  %169 = load i64, i64* @errno, align 8
  %170 = load i64, i64* @EINVAL, align 8
  %171 = icmp eq i64 %169, %170
  br label %172

172:                                              ; preds = %168, %161
  %173 = phi i1 [ false, %161 ], [ %171, %168 ]
  %174 = zext i1 %173 to i32
  %175 = call i32 @assert(i32 %174)
  %176 = load i32, i32* %8, align 4
  %177 = call i32 @close(i32 %176)
  br label %178

178:                                              ; preds = %172, %49
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
