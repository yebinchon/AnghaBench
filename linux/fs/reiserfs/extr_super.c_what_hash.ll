; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_super.c_what_hash.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_super.c_what_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }

@UNSET_HASH = common dso_local global i64 0, align 8
@YURA_HASH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"reiserfs-2507\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"Error, %s hash detected, unable to force rupasov hash\00", align 1
@TEA_HASH = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"reiserfs-2508\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"Error, %s hash detected, unable to force tea hash\00", align 1
@R5_HASH = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c"reiserfs-2509\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"Error, %s hash detected, unable to force r5 hash\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*)* @what_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @what_hash(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca i64, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %4 = load %struct.super_block*, %struct.super_block** %2, align 8
  %5 = call i32 @SB_DISK_SUPER_BLOCK(%struct.super_block* %4)
  %6 = call i64 @sb_hash_function_code(i32 %5)
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @UNSET_HASH, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load %struct.super_block*, %struct.super_block** %2, align 8
  %12 = call i64 @reiserfs_hash_detect(%struct.super_block* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %10, %1
  %15 = load %struct.super_block*, %struct.super_block** %2, align 8
  %16 = call i64 @find_hash_out(%struct.super_block* %15)
  store i64 %16, i64* %3, align 8
  br label %17

17:                                               ; preds = %14, %10
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* @UNSET_HASH, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %70

21:                                               ; preds = %17
  %22 = load %struct.super_block*, %struct.super_block** %2, align 8
  %23 = call i64 @reiserfs_hash_detect(%struct.super_block* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %70

25:                                               ; preds = %21
  %26 = load %struct.super_block*, %struct.super_block** %2, align 8
  %27 = call i64 @reiserfs_rupasov_hash(%struct.super_block* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %25
  %30 = load i64, i64* %3, align 8
  %31 = load i64, i64* @YURA_HASH, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load %struct.super_block*, %struct.super_block** %2, align 8
  %35 = load i64, i64* %3, align 8
  %36 = call i32 @reiserfs_hashname(i64 %35)
  %37 = call i32 @reiserfs_warning(%struct.super_block* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i64, i64* @UNSET_HASH, align 8
  store i64 %38, i64* %3, align 8
  br label %69

39:                                               ; preds = %29, %25
  %40 = load %struct.super_block*, %struct.super_block** %2, align 8
  %41 = call i64 @reiserfs_tea_hash(%struct.super_block* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %39
  %44 = load i64, i64* %3, align 8
  %45 = load i64, i64* @TEA_HASH, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load %struct.super_block*, %struct.super_block** %2, align 8
  %49 = load i64, i64* %3, align 8
  %50 = call i32 @reiserfs_hashname(i64 %49)
  %51 = call i32 @reiserfs_warning(%struct.super_block* %48, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  %52 = load i64, i64* @UNSET_HASH, align 8
  store i64 %52, i64* %3, align 8
  br label %68

53:                                               ; preds = %43, %39
  %54 = load %struct.super_block*, %struct.super_block** %2, align 8
  %55 = call i64 @reiserfs_r5_hash(%struct.super_block* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %53
  %58 = load i64, i64* %3, align 8
  %59 = load i64, i64* @R5_HASH, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = load %struct.super_block*, %struct.super_block** %2, align 8
  %63 = load i64, i64* %3, align 8
  %64 = call i32 @reiserfs_hashname(i64 %63)
  %65 = call i32 @reiserfs_warning(%struct.super_block* %62, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i32 %64)
  %66 = load i64, i64* @UNSET_HASH, align 8
  store i64 %66, i64* %3, align 8
  br label %67

67:                                               ; preds = %61, %57, %53
  br label %68

68:                                               ; preds = %67, %47
  br label %69

69:                                               ; preds = %68, %33
  br label %91

70:                                               ; preds = %21, %17
  %71 = load %struct.super_block*, %struct.super_block** %2, align 8
  %72 = call i64 @reiserfs_rupasov_hash(%struct.super_block* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i64, i64* @YURA_HASH, align 8
  store i64 %75, i64* %3, align 8
  br label %90

76:                                               ; preds = %70
  %77 = load %struct.super_block*, %struct.super_block** %2, align 8
  %78 = call i64 @reiserfs_tea_hash(%struct.super_block* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i64, i64* @TEA_HASH, align 8
  store i64 %81, i64* %3, align 8
  br label %89

82:                                               ; preds = %76
  %83 = load %struct.super_block*, %struct.super_block** %2, align 8
  %84 = call i64 @reiserfs_r5_hash(%struct.super_block* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = load i64, i64* @R5_HASH, align 8
  store i64 %87, i64* %3, align 8
  br label %88

88:                                               ; preds = %86, %82
  br label %89

89:                                               ; preds = %88, %80
  br label %90

90:                                               ; preds = %89, %74
  br label %91

91:                                               ; preds = %90, %69
  %92 = load i64, i64* %3, align 8
  %93 = load i64, i64* @UNSET_HASH, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %110

95:                                               ; preds = %91
  %96 = load %struct.super_block*, %struct.super_block** %2, align 8
  %97 = call i32 @sb_rdonly(%struct.super_block* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %110, label %99

99:                                               ; preds = %95
  %100 = load i64, i64* %3, align 8
  %101 = load %struct.super_block*, %struct.super_block** %2, align 8
  %102 = call i32 @SB_DISK_SUPER_BLOCK(%struct.super_block* %101)
  %103 = call i64 @sb_hash_function_code(i32 %102)
  %104 = icmp ne i64 %100, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %99
  %106 = load %struct.super_block*, %struct.super_block** %2, align 8
  %107 = call i32 @SB_DISK_SUPER_BLOCK(%struct.super_block* %106)
  %108 = load i64, i64* %3, align 8
  %109 = call i32 @set_sb_hash_function_code(i32 %107, i64 %108)
  br label %110

110:                                              ; preds = %105, %99, %95, %91
  %111 = load i64, i64* %3, align 8
  %112 = trunc i64 %111 to i32
  ret i32 %112
}

declare dso_local i64 @sb_hash_function_code(i32) #1

declare dso_local i32 @SB_DISK_SUPER_BLOCK(%struct.super_block*) #1

declare dso_local i64 @reiserfs_hash_detect(%struct.super_block*) #1

declare dso_local i64 @find_hash_out(%struct.super_block*) #1

declare dso_local i64 @reiserfs_rupasov_hash(%struct.super_block*) #1

declare dso_local i32 @reiserfs_warning(%struct.super_block*, i8*, i8*, i32) #1

declare dso_local i32 @reiserfs_hashname(i64) #1

declare dso_local i64 @reiserfs_tea_hash(%struct.super_block*) #1

declare dso_local i64 @reiserfs_r5_hash(%struct.super_block*) #1

declare dso_local i32 @sb_rdonly(%struct.super_block*) #1

declare dso_local i32 @set_sb_hash_function_code(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
