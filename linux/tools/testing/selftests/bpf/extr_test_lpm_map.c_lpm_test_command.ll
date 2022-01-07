; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_lpm_map.c_lpm_test_command.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_lpm_map.c_lpm_test_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpm_mt_test_info = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.bpf_lpm_trie_key = type { i32, i32 }

@MAX_TEST_KEYS = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @lpm_test_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @lpm_test_command(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.lpm_mt_test_info*, align 8
  %10 = alloca %struct.bpf_lpm_trie_key*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.bpf_lpm_trie_key*, align 8
  store i8* %0, i8** %3, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = bitcast i8* %14 to %struct.lpm_mt_test_info*
  store %struct.lpm_mt_test_info* %15, %struct.lpm_mt_test_info** %9, align 8
  store i32 12, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call %struct.bpf_lpm_trie_key* @alloca(i32 %16)
  store %struct.bpf_lpm_trie_key* %17, %struct.bpf_lpm_trie_key** %10, align 8
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %152, %1
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.lpm_mt_test_info*, %struct.lpm_mt_test_info** %9, align 8
  %21 = getelementptr inbounds %struct.lpm_mt_test_info, %struct.lpm_mt_test_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %155

24:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %148, %24
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @MAX_TEST_KEYS, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %151

29:                                               ; preds = %25
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.lpm_mt_test_info*, %struct.lpm_mt_test_info** %9, align 8
  %32 = getelementptr inbounds %struct.lpm_mt_test_info, %struct.lpm_mt_test_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sdiv i32 %33, 2
  %35 = icmp slt i32 %30, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* %4, align 4
  br label %43

38:                                               ; preds = %29
  %39 = load i32, i32* @MAX_TEST_KEYS, align 4
  %40 = load i32, i32* %4, align 4
  %41 = sub nsw i32 %39, %40
  %42 = sub nsw i32 %41, 1
  br label %43

43:                                               ; preds = %38, %36
  %44 = phi i32 [ %37, %36 ], [ %42, %38 ]
  store i32 %44, i32* %5, align 4
  %45 = load %struct.lpm_mt_test_info*, %struct.lpm_mt_test_info** %9, align 8
  %46 = getelementptr inbounds %struct.lpm_mt_test_info, %struct.lpm_mt_test_info* %45, i32 0, i32 3
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %10, align 8
  %54 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %10, align 8
  %56 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.lpm_mt_test_info*, %struct.lpm_mt_test_info** %9, align 8
  %59 = getelementptr inbounds %struct.lpm_mt_test_info, %struct.lpm_mt_test_info* %58, i32 0, i32 3
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = call i32 @memcpy(i32 %57, i32* %64, i32 4)
  %66 = load %struct.lpm_mt_test_info*, %struct.lpm_mt_test_info** %9, align 8
  %67 = getelementptr inbounds %struct.lpm_mt_test_info, %struct.lpm_mt_test_info* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %43
  %71 = load i32, i32* %5, align 4
  store i32 %71, i32* %11, align 4
  %72 = load %struct.lpm_mt_test_info*, %struct.lpm_mt_test_info** %9, align 8
  %73 = getelementptr inbounds %struct.lpm_mt_test_info, %struct.lpm_mt_test_info* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %10, align 8
  %76 = call i64 @bpf_map_update_elem(i32 %74, %struct.bpf_lpm_trie_key* %75, i32* %11, i32 0)
  %77 = icmp eq i64 %76, 0
  %78 = zext i1 %77 to i32
  %79 = call i32 @assert(i32 %78)
  br label %147

80:                                               ; preds = %43
  %81 = load %struct.lpm_mt_test_info*, %struct.lpm_mt_test_info** %9, align 8
  %82 = getelementptr inbounds %struct.lpm_mt_test_info, %struct.lpm_mt_test_info* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %101

85:                                               ; preds = %80
  %86 = load %struct.lpm_mt_test_info*, %struct.lpm_mt_test_info** %9, align 8
  %87 = getelementptr inbounds %struct.lpm_mt_test_info, %struct.lpm_mt_test_info* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %10, align 8
  %90 = call i32 @bpf_map_delete_elem(i32 %88, %struct.bpf_lpm_trie_key* %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %85
  %94 = load i64, i64* @errno, align 8
  %95 = load i64, i64* @ENOENT, align 8
  %96 = icmp eq i64 %94, %95
  br label %97

97:                                               ; preds = %93, %85
  %98 = phi i1 [ true, %85 ], [ %96, %93 ]
  %99 = zext i1 %98 to i32
  %100 = call i32 @assert(i32 %99)
  br label %146

101:                                              ; preds = %80
  %102 = load %struct.lpm_mt_test_info*, %struct.lpm_mt_test_info** %9, align 8
  %103 = getelementptr inbounds %struct.lpm_mt_test_info, %struct.lpm_mt_test_info* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 2
  br i1 %105, label %106, label %122

106:                                              ; preds = %101
  %107 = load %struct.lpm_mt_test_info*, %struct.lpm_mt_test_info** %9, align 8
  %108 = getelementptr inbounds %struct.lpm_mt_test_info, %struct.lpm_mt_test_info* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %10, align 8
  %111 = call i32 @bpf_map_lookup_elem(i32 %109, %struct.bpf_lpm_trie_key* %110, i32* %12)
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* %6, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %106
  %115 = load i64, i64* @errno, align 8
  %116 = load i64, i64* @ENOENT, align 8
  %117 = icmp eq i64 %115, %116
  br label %118

118:                                              ; preds = %114, %106
  %119 = phi i1 [ true, %106 ], [ %117, %114 ]
  %120 = zext i1 %119 to i32
  %121 = call i32 @assert(i32 %120)
  br label %145

122:                                              ; preds = %101
  %123 = load i32, i32* %8, align 4
  %124 = call %struct.bpf_lpm_trie_key* @alloca(i32 %123)
  store %struct.bpf_lpm_trie_key* %124, %struct.bpf_lpm_trie_key** %13, align 8
  %125 = load %struct.lpm_mt_test_info*, %struct.lpm_mt_test_info** %9, align 8
  %126 = getelementptr inbounds %struct.lpm_mt_test_info, %struct.lpm_mt_test_info* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %10, align 8
  %129 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %13, align 8
  %130 = call i32 @bpf_map_get_next_key(i32 %127, %struct.bpf_lpm_trie_key* %128, %struct.bpf_lpm_trie_key* %129)
  store i32 %130, i32* %6, align 4
  %131 = load i32, i32* %6, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %141, label %133

133:                                              ; preds = %122
  %134 = load i64, i64* @errno, align 8
  %135 = load i64, i64* @ENOENT, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %141, label %137

137:                                              ; preds = %133
  %138 = load i64, i64* @errno, align 8
  %139 = load i64, i64* @ENOMEM, align 8
  %140 = icmp eq i64 %138, %139
  br label %141

141:                                              ; preds = %137, %133, %122
  %142 = phi i1 [ true, %133 ], [ true, %122 ], [ %140, %137 ]
  %143 = zext i1 %142 to i32
  %144 = call i32 @assert(i32 %143)
  br label %145

145:                                              ; preds = %141, %118
  br label %146

146:                                              ; preds = %145, %97
  br label %147

147:                                              ; preds = %146, %70
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %4, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %4, align 4
  br label %25

151:                                              ; preds = %25
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %7, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %7, align 4
  br label %18

155:                                              ; preds = %18
  %156 = load %struct.lpm_mt_test_info*, %struct.lpm_mt_test_info** %9, align 8
  %157 = bitcast %struct.lpm_mt_test_info* %156 to i8*
  %158 = call i32 @pthread_exit(i8* %157)
  %159 = load i8*, i8** %2, align 8
  ret i8* %159
}

declare dso_local %struct.bpf_lpm_trie_key* @alloca(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @bpf_map_update_elem(i32, %struct.bpf_lpm_trie_key*, i32*, i32) #1

declare dso_local i32 @bpf_map_delete_elem(i32, %struct.bpf_lpm_trie_key*) #1

declare dso_local i32 @bpf_map_lookup_elem(i32, %struct.bpf_lpm_trie_key*, i32*) #1

declare dso_local i32 @bpf_map_get_next_key(i32, %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key*) #1

declare dso_local i32 @pthread_exit(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
