; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_delegation_blocked.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_delegation_blocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bloom_pair = type { i64, i32, i64, i64, i32* }
%struct.knfsd_fh = type { i32, i32 }

@blocked_delegations = common dso_local global %struct.bloom_pair zeroinitializer, align 8
@blocked_delegations_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knfsd_fh*)* @delegation_blocked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delegation_blocked(%struct.knfsd_fh* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.knfsd_fh*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bloom_pair*, align 8
  store %struct.knfsd_fh* %0, %struct.knfsd_fh** %3, align 8
  store %struct.bloom_pair* @blocked_delegations, %struct.bloom_pair** %5, align 8
  %6 = load %struct.bloom_pair*, %struct.bloom_pair** %5, align 8
  %7 = getelementptr inbounds %struct.bloom_pair, %struct.bloom_pair* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %132

11:                                               ; preds = %1
  %12 = call i32 (...) @seconds_since_boot()
  %13 = load %struct.bloom_pair*, %struct.bloom_pair** %5, align 8
  %14 = getelementptr inbounds %struct.bloom_pair, %struct.bloom_pair* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = sub nsw i32 %12, %15
  %17 = icmp sgt i32 %16, 30
  br i1 %17, label %18, label %59

18:                                               ; preds = %11
  %19 = call i32 @spin_lock(i32* @blocked_delegations_lock)
  %20 = call i32 (...) @seconds_since_boot()
  %21 = load %struct.bloom_pair*, %struct.bloom_pair** %5, align 8
  %22 = getelementptr inbounds %struct.bloom_pair, %struct.bloom_pair* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 %20, %23
  %25 = icmp sgt i32 %24, 30
  br i1 %25, label %26, label %57

26:                                               ; preds = %18
  %27 = load %struct.bloom_pair*, %struct.bloom_pair** %5, align 8
  %28 = getelementptr inbounds %struct.bloom_pair, %struct.bloom_pair* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.bloom_pair*, %struct.bloom_pair** %5, align 8
  %31 = getelementptr inbounds %struct.bloom_pair, %struct.bloom_pair* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 %32, %29
  store i64 %33, i64* %31, align 8
  %34 = load %struct.bloom_pair*, %struct.bloom_pair** %5, align 8
  %35 = getelementptr inbounds %struct.bloom_pair, %struct.bloom_pair* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.bloom_pair*, %struct.bloom_pair** %5, align 8
  %38 = getelementptr inbounds %struct.bloom_pair, %struct.bloom_pair* %37, i32 0, i32 2
  store i64 %36, i64* %38, align 8
  %39 = load %struct.bloom_pair*, %struct.bloom_pair** %5, align 8
  %40 = getelementptr inbounds %struct.bloom_pair, %struct.bloom_pair* %39, i32 0, i32 4
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.bloom_pair*, %struct.bloom_pair** %5, align 8
  %43 = getelementptr inbounds %struct.bloom_pair, %struct.bloom_pair* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @memset(i32 %46, i32 0, i32 4)
  %48 = load %struct.bloom_pair*, %struct.bloom_pair** %5, align 8
  %49 = getelementptr inbounds %struct.bloom_pair, %struct.bloom_pair* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = sub i64 1, %50
  %52 = load %struct.bloom_pair*, %struct.bloom_pair** %5, align 8
  %53 = getelementptr inbounds %struct.bloom_pair, %struct.bloom_pair* %52, i32 0, i32 3
  store i64 %51, i64* %53, align 8
  %54 = call i32 (...) @seconds_since_boot()
  %55 = load %struct.bloom_pair*, %struct.bloom_pair** %5, align 8
  %56 = getelementptr inbounds %struct.bloom_pair, %struct.bloom_pair* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %26, %18
  %58 = call i32 @spin_unlock(i32* @blocked_delegations_lock)
  br label %59

59:                                               ; preds = %57, %11
  %60 = load %struct.knfsd_fh*, %struct.knfsd_fh** %3, align 8
  %61 = getelementptr inbounds %struct.knfsd_fh, %struct.knfsd_fh* %60, i32 0, i32 1
  %62 = load %struct.knfsd_fh*, %struct.knfsd_fh** %3, align 8
  %63 = getelementptr inbounds %struct.knfsd_fh, %struct.knfsd_fh* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @jhash(i32* %61, i32 %64, i32 0)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = and i32 %66, 255
  %68 = load %struct.bloom_pair*, %struct.bloom_pair** %5, align 8
  %69 = getelementptr inbounds %struct.bloom_pair, %struct.bloom_pair* %68, i32 0, i32 4
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @test_bit(i32 %67, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %98

75:                                               ; preds = %59
  %76 = load i32, i32* %4, align 4
  %77 = ashr i32 %76, 8
  %78 = and i32 %77, 255
  %79 = load %struct.bloom_pair*, %struct.bloom_pair** %5, align 8
  %80 = getelementptr inbounds %struct.bloom_pair, %struct.bloom_pair* %79, i32 0, i32 4
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @test_bit(i32 %78, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %75
  %87 = load i32, i32* %4, align 4
  %88 = ashr i32 %87, 16
  %89 = and i32 %88, 255
  %90 = load %struct.bloom_pair*, %struct.bloom_pair** %5, align 8
  %91 = getelementptr inbounds %struct.bloom_pair, %struct.bloom_pair* %90, i32 0, i32 4
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @test_bit(i32 %89, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %86
  store i32 1, i32* %2, align 4
  br label %132

98:                                               ; preds = %86, %75, %59
  %99 = load i32, i32* %4, align 4
  %100 = and i32 %99, 255
  %101 = load %struct.bloom_pair*, %struct.bloom_pair** %5, align 8
  %102 = getelementptr inbounds %struct.bloom_pair, %struct.bloom_pair* %101, i32 0, i32 4
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @test_bit(i32 %100, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %131

108:                                              ; preds = %98
  %109 = load i32, i32* %4, align 4
  %110 = ashr i32 %109, 8
  %111 = and i32 %110, 255
  %112 = load %struct.bloom_pair*, %struct.bloom_pair** %5, align 8
  %113 = getelementptr inbounds %struct.bloom_pair, %struct.bloom_pair* %112, i32 0, i32 4
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 1
  %116 = load i32, i32* %115, align 4
  %117 = call i64 @test_bit(i32 %111, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %131

119:                                              ; preds = %108
  %120 = load i32, i32* %4, align 4
  %121 = ashr i32 %120, 16
  %122 = and i32 %121, 255
  %123 = load %struct.bloom_pair*, %struct.bloom_pair** %5, align 8
  %124 = getelementptr inbounds %struct.bloom_pair, %struct.bloom_pair* %123, i32 0, i32 4
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 1
  %127 = load i32, i32* %126, align 4
  %128 = call i64 @test_bit(i32 %122, i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %119
  store i32 1, i32* %2, align 4
  br label %132

131:                                              ; preds = %119, %108, %98
  store i32 0, i32* %2, align 4
  br label %132

132:                                              ; preds = %131, %130, %97, %10
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local i32 @seconds_since_boot(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @jhash(i32*, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
