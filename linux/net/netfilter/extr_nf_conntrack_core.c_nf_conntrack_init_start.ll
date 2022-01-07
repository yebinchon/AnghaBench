; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_core.c_nf_conntrack_init_start.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_core.c_nf_conntrack_init_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@nf_conntrack_generation = common dso_local global i32 0, align 4
@CONNTRACK_LOCKS = common dso_local global i32 0, align 4
@nf_conntrack_locks = common dso_local global i32* null, align 8
@nf_conntrack_htable_size = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@nf_conntrack_hash = common dso_local global i32 0, align 4
@nf_conntrack_max = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"nf_conntrack\00", align 1
@NFCT_INFOMASK = common dso_local global i64 0, align 8
@SLAB_TYPESAFE_BY_RCU = common dso_local global i32 0, align 4
@SLAB_HWCACHE_ALIGN = common dso_local global i32 0, align 4
@nf_conntrack_cachep = common dso_local global i32 0, align 4
@conntrack_gc_work = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@system_power_efficient_wq = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_conntrack_init_start() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i64 (...) @totalram_pages()
  store i64 %6, i64* %2, align 8
  store i32 8, i32* %3, align 4
  %7 = load i32, i32* @ENOMEM, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %4, align 4
  %9 = call i32 (...) @total_extension_size()
  %10 = icmp ugt i32 %9, 255
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUILD_BUG_ON(i32 %11)
  %13 = call i32 @seqcount_init(i32* @nf_conntrack_generation)
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %24, %0
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @CONNTRACK_LOCKS, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %14
  %19 = load i32*, i32** @nf_conntrack_locks, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = call i32 @spin_lock_init(i32* %22)
  br label %24

24:                                               ; preds = %18
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %5, align 4
  br label %14

27:                                               ; preds = %14
  %28 = load i32, i32* @nf_conntrack_htable_size, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %57, label %30

30:                                               ; preds = %27
  %31 = load i64, i64* %2, align 8
  %32 = load i64, i64* @PAGE_SHIFT, align 8
  %33 = shl i64 %31, %32
  %34 = udiv i64 %33, 16384
  %35 = udiv i64 %34, 4
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* @nf_conntrack_htable_size, align 4
  %37 = load i64, i64* %2, align 8
  %38 = load i32, i32* @PAGE_SIZE, align 4
  %39 = sdiv i32 1073741824, %38
  %40 = mul nsw i32 4, %39
  %41 = sext i32 %40 to i64
  %42 = icmp ugt i64 %37, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %30
  store i32 65536, i32* @nf_conntrack_htable_size, align 4
  br label %52

44:                                               ; preds = %30
  %45 = load i64, i64* %2, align 8
  %46 = load i32, i32* @PAGE_SIZE, align 4
  %47 = sdiv i32 1073741824, %46
  %48 = sext i32 %47 to i64
  %49 = icmp ugt i64 %45, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 16384, i32* @nf_conntrack_htable_size, align 4
  br label %51

51:                                               ; preds = %50, %44
  br label %52

52:                                               ; preds = %51, %43
  %53 = load i32, i32* @nf_conntrack_htable_size, align 4
  %54 = icmp slt i32 %53, 32
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 32, i32* @nf_conntrack_htable_size, align 4
  br label %56

56:                                               ; preds = %55, %52
  store i32 4, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %27
  %58 = call i32 @nf_ct_alloc_hashtable(i32* @nf_conntrack_htable_size, i32 1)
  store i32 %58, i32* @nf_conntrack_hash, align 4
  %59 = load i32, i32* @nf_conntrack_hash, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %1, align 4
  br label %150

64:                                               ; preds = %57
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @nf_conntrack_htable_size, align 4
  %67 = mul nsw i32 %65, %66
  store i32 %67, i32* @nf_conntrack_max, align 4
  %68 = load i64, i64* @NFCT_INFOMASK, align 8
  %69 = add nsw i64 %68, 1
  %70 = load i32, i32* @SLAB_TYPESAFE_BY_RCU, align 4
  %71 = load i32, i32* @SLAB_HWCACHE_ALIGN, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @kmem_cache_create(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 4, i64 %69, i32 %72, i32* null)
  store i32 %73, i32* @nf_conntrack_cachep, align 4
  %74 = load i32, i32* @nf_conntrack_cachep, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %64
  br label %146

77:                                               ; preds = %64
  %78 = call i32 (...) @nf_conntrack_expect_init()
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  br label %143

82:                                               ; preds = %77
  %83 = call i32 (...) @nf_conntrack_acct_init()
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* %4, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  br label %141

87:                                               ; preds = %82
  %88 = call i32 (...) @nf_conntrack_tstamp_init()
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* %4, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  br label %139

92:                                               ; preds = %87
  %93 = call i32 (...) @nf_conntrack_ecache_init()
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* %4, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  br label %137

97:                                               ; preds = %92
  %98 = call i32 (...) @nf_conntrack_timeout_init()
  store i32 %98, i32* %4, align 4
  %99 = load i32, i32* %4, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  br label %135

102:                                              ; preds = %97
  %103 = call i32 (...) @nf_conntrack_helper_init()
  store i32 %103, i32* %4, align 4
  %104 = load i32, i32* %4, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  br label %133

107:                                              ; preds = %102
  %108 = call i32 (...) @nf_conntrack_labels_init()
  store i32 %108, i32* %4, align 4
  %109 = load i32, i32* %4, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %107
  br label %131

112:                                              ; preds = %107
  %113 = call i32 (...) @nf_conntrack_seqadj_init()
  store i32 %113, i32* %4, align 4
  %114 = load i32, i32* %4, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %112
  br label %129

117:                                              ; preds = %112
  %118 = call i32 (...) @nf_conntrack_proto_init()
  store i32 %118, i32* %4, align 4
  %119 = load i32, i32* %4, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  br label %127

122:                                              ; preds = %117
  %123 = call i32 @conntrack_gc_work_init(%struct.TYPE_3__* @conntrack_gc_work)
  %124 = load i32, i32* @system_power_efficient_wq, align 4
  %125 = load i32, i32* @HZ, align 4
  %126 = call i32 @queue_delayed_work(i32 %124, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @conntrack_gc_work, i32 0, i32 0), i32 %125)
  store i32 0, i32* %1, align 4
  br label %150

127:                                              ; preds = %121
  %128 = call i32 (...) @nf_conntrack_seqadj_fini()
  br label %129

129:                                              ; preds = %127, %116
  %130 = call i32 (...) @nf_conntrack_labels_fini()
  br label %131

131:                                              ; preds = %129, %111
  %132 = call i32 (...) @nf_conntrack_helper_fini()
  br label %133

133:                                              ; preds = %131, %106
  %134 = call i32 (...) @nf_conntrack_timeout_fini()
  br label %135

135:                                              ; preds = %133, %101
  %136 = call i32 (...) @nf_conntrack_ecache_fini()
  br label %137

137:                                              ; preds = %135, %96
  %138 = call i32 (...) @nf_conntrack_tstamp_fini()
  br label %139

139:                                              ; preds = %137, %91
  %140 = call i32 (...) @nf_conntrack_acct_fini()
  br label %141

141:                                              ; preds = %139, %86
  %142 = call i32 (...) @nf_conntrack_expect_fini()
  br label %143

143:                                              ; preds = %141, %81
  %144 = load i32, i32* @nf_conntrack_cachep, align 4
  %145 = call i32 @kmem_cache_destroy(i32 %144)
  br label %146

146:                                              ; preds = %143, %76
  %147 = load i32, i32* @nf_conntrack_hash, align 4
  %148 = call i32 @kvfree(i32 %147)
  %149 = load i32, i32* %4, align 4
  store i32 %149, i32* %1, align 4
  br label %150

150:                                              ; preds = %146, %122, %61
  %151 = load i32, i32* %1, align 4
  ret i32 %151
}

declare dso_local i64 @totalram_pages(...) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @total_extension_size(...) #1

declare dso_local i32 @seqcount_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @nf_ct_alloc_hashtable(i32*, i32) #1

declare dso_local i32 @kmem_cache_create(i8*, i32, i64, i32, i32*) #1

declare dso_local i32 @nf_conntrack_expect_init(...) #1

declare dso_local i32 @nf_conntrack_acct_init(...) #1

declare dso_local i32 @nf_conntrack_tstamp_init(...) #1

declare dso_local i32 @nf_conntrack_ecache_init(...) #1

declare dso_local i32 @nf_conntrack_timeout_init(...) #1

declare dso_local i32 @nf_conntrack_helper_init(...) #1

declare dso_local i32 @nf_conntrack_labels_init(...) #1

declare dso_local i32 @nf_conntrack_seqadj_init(...) #1

declare dso_local i32 @nf_conntrack_proto_init(...) #1

declare dso_local i32 @conntrack_gc_work_init(%struct.TYPE_3__*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @nf_conntrack_seqadj_fini(...) #1

declare dso_local i32 @nf_conntrack_labels_fini(...) #1

declare dso_local i32 @nf_conntrack_helper_fini(...) #1

declare dso_local i32 @nf_conntrack_timeout_fini(...) #1

declare dso_local i32 @nf_conntrack_ecache_fini(...) #1

declare dso_local i32 @nf_conntrack_tstamp_fini(...) #1

declare dso_local i32 @nf_conntrack_acct_fini(...) #1

declare dso_local i32 @nf_conntrack_expect_fini(...) #1

declare dso_local i32 @kmem_cache_destroy(i32) #1

declare dso_local i32 @kvfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
