; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_glock.c_gflags2str.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_glock.c_gflags2str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_glock = type { i64, i64 }

@GLF_LOCK = common dso_local global i32 0, align 4
@GLF_DEMOTE = common dso_local global i32 0, align 4
@GLF_PENDING_DEMOTE = common dso_local global i32 0, align 4
@GLF_DEMOTE_IN_PROGRESS = common dso_local global i32 0, align 4
@GLF_DIRTY = common dso_local global i32 0, align 4
@GLF_LFLUSH = common dso_local global i32 0, align 4
@GLF_INVALIDATE_IN_PROGRESS = common dso_local global i32 0, align 4
@GLF_REPLY_PENDING = common dso_local global i32 0, align 4
@GLF_INITIAL = common dso_local global i32 0, align 4
@GLF_FROZEN = common dso_local global i32 0, align 4
@GLF_QUEUED = common dso_local global i32 0, align 4
@GLF_LRU = common dso_local global i32 0, align 4
@GLF_BLOCKING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.gfs2_glock*)* @gflags2str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gflags2str(i8* %0, %struct.gfs2_glock* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.gfs2_glock*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.gfs2_glock* %1, %struct.gfs2_glock** %4, align 8
  %7 = load %struct.gfs2_glock*, %struct.gfs2_glock** %4, align 8
  %8 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %7, i32 0, i32 0
  store i64* %8, i64** %5, align 8
  %9 = load i8*, i8** %3, align 8
  store i8* %9, i8** %6, align 8
  %10 = load i32, i32* @GLF_LOCK, align 4
  %11 = load i64*, i64** %5, align 8
  %12 = call i64 @test_bit(i32 %10, i64* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %6, align 8
  store i8 108, i8* %15, align 1
  br label %17

17:                                               ; preds = %14, %2
  %18 = load i32, i32* @GLF_DEMOTE, align 4
  %19 = load i64*, i64** %5, align 8
  %20 = call i64 @test_bit(i32 %18, i64* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %6, align 8
  store i8 68, i8* %23, align 1
  br label %25

25:                                               ; preds = %22, %17
  %26 = load i32, i32* @GLF_PENDING_DEMOTE, align 4
  %27 = load i64*, i64** %5, align 8
  %28 = call i64 @test_bit(i32 %26, i64* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i8*, i8** %6, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %6, align 8
  store i8 100, i8* %31, align 1
  br label %33

33:                                               ; preds = %30, %25
  %34 = load i32, i32* @GLF_DEMOTE_IN_PROGRESS, align 4
  %35 = load i64*, i64** %5, align 8
  %36 = call i64 @test_bit(i32 %34, i64* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i8*, i8** %6, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %6, align 8
  store i8 112, i8* %39, align 1
  br label %41

41:                                               ; preds = %38, %33
  %42 = load i32, i32* @GLF_DIRTY, align 4
  %43 = load i64*, i64** %5, align 8
  %44 = call i64 @test_bit(i32 %42, i64* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %6, align 8
  store i8 121, i8* %47, align 1
  br label %49

49:                                               ; preds = %46, %41
  %50 = load i32, i32* @GLF_LFLUSH, align 4
  %51 = load i64*, i64** %5, align 8
  %52 = call i64 @test_bit(i32 %50, i64* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %6, align 8
  store i8 102, i8* %55, align 1
  br label %57

57:                                               ; preds = %54, %49
  %58 = load i32, i32* @GLF_INVALIDATE_IN_PROGRESS, align 4
  %59 = load i64*, i64** %5, align 8
  %60 = call i64 @test_bit(i32 %58, i64* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i8*, i8** %6, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %6, align 8
  store i8 105, i8* %63, align 1
  br label %65

65:                                               ; preds = %62, %57
  %66 = load i32, i32* @GLF_REPLY_PENDING, align 4
  %67 = load i64*, i64** %5, align 8
  %68 = call i64 @test_bit(i32 %66, i64* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i8*, i8** %6, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %6, align 8
  store i8 114, i8* %71, align 1
  br label %73

73:                                               ; preds = %70, %65
  %74 = load i32, i32* @GLF_INITIAL, align 4
  %75 = load i64*, i64** %5, align 8
  %76 = call i64 @test_bit(i32 %74, i64* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i8*, i8** %6, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %6, align 8
  store i8 73, i8* %79, align 1
  br label %81

81:                                               ; preds = %78, %73
  %82 = load i32, i32* @GLF_FROZEN, align 4
  %83 = load i64*, i64** %5, align 8
  %84 = call i64 @test_bit(i32 %82, i64* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load i8*, i8** %6, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %6, align 8
  store i8 70, i8* %87, align 1
  br label %89

89:                                               ; preds = %86, %81
  %90 = load i32, i32* @GLF_QUEUED, align 4
  %91 = load i64*, i64** %5, align 8
  %92 = call i64 @test_bit(i32 %90, i64* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load i8*, i8** %6, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %6, align 8
  store i8 113, i8* %95, align 1
  br label %97

97:                                               ; preds = %94, %89
  %98 = load i32, i32* @GLF_LRU, align 4
  %99 = load i64*, i64** %5, align 8
  %100 = call i64 @test_bit(i32 %98, i64* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load i8*, i8** %6, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %6, align 8
  store i8 76, i8* %103, align 1
  br label %105

105:                                              ; preds = %102, %97
  %106 = load %struct.gfs2_glock*, %struct.gfs2_glock** %4, align 8
  %107 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load i8*, i8** %6, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %6, align 8
  store i8 111, i8* %111, align 1
  br label %113

113:                                              ; preds = %110, %105
  %114 = load i32, i32* @GLF_BLOCKING, align 4
  %115 = load i64*, i64** %5, align 8
  %116 = call i64 @test_bit(i32 %114, i64* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %113
  %119 = load i8*, i8** %6, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %6, align 8
  store i8 98, i8* %119, align 1
  br label %121

121:                                              ; preds = %118, %113
  %122 = load i8*, i8** %6, align 8
  store i8 0, i8* %122, align 1
  %123 = load i8*, i8** %3, align 8
  ret i8* %123
}

declare dso_local i64 @test_bit(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
