; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_f2fs_io_type_to_rw_hint.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_f2fs_io_type_to_rw_hint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.TYPE_2__ = type { i64 }

@WHINT_MODE_USER = common dso_local global i64 0, align 8
@DATA = common dso_local global i32 0, align 4
@WARM = common dso_local global i32 0, align 4
@WRITE_LIFE_NOT_SET = common dso_local global i32 0, align 4
@HOT = common dso_local global i32 0, align 4
@WRITE_LIFE_SHORT = common dso_local global i32 0, align 4
@COLD = common dso_local global i32 0, align 4
@WRITE_LIFE_EXTREME = common dso_local global i32 0, align 4
@WHINT_MODE_FS = common dso_local global i64 0, align 8
@WRITE_LIFE_LONG = common dso_local global i32 0, align 4
@NODE = common dso_local global i32 0, align 4
@WRITE_LIFE_NONE = common dso_local global i32 0, align 4
@META = common dso_local global i32 0, align 4
@WRITE_LIFE_MEDIUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_io_type_to_rw_hint(%struct.f2fs_sb_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.f2fs_sb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_2__, align 8
  %9 = alloca %struct.TYPE_2__, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %11 = call i64 @F2FS_OPTION(%struct.f2fs_sb_info* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i64 %11, i64* %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @WHINT_MODE_USER, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %45

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @DATA, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %42

21:                                               ; preds = %17
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @WARM, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @WRITE_LIFE_NOT_SET, align 4
  store i32 %26, i32* %4, align 4
  br label %112

27:                                               ; preds = %21
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @HOT, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @WRITE_LIFE_SHORT, align 4
  store i32 %32, i32* %4, align 4
  br label %112

33:                                               ; preds = %27
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @COLD, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @WRITE_LIFE_EXTREME, align 4
  store i32 %38, i32* %4, align 4
  br label %112

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39
  br label %41

41:                                               ; preds = %40
  br label %44

42:                                               ; preds = %17
  %43 = load i32, i32* @WRITE_LIFE_NOT_SET, align 4
  store i32 %43, i32* %4, align 4
  br label %112

44:                                               ; preds = %41
  br label %110

45:                                               ; preds = %3
  %46 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %47 = call i64 @F2FS_OPTION(%struct.f2fs_sb_info* %46)
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i64 %47, i64* %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @WHINT_MODE_FS, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %109

53:                                               ; preds = %45
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @DATA, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %78

57:                                               ; preds = %53
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @WARM, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i32, i32* @WRITE_LIFE_LONG, align 4
  store i32 %62, i32* %4, align 4
  br label %112

63:                                               ; preds = %57
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @HOT, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i32, i32* @WRITE_LIFE_SHORT, align 4
  store i32 %68, i32* %4, align 4
  br label %112

69:                                               ; preds = %63
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @COLD, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = load i32, i32* @WRITE_LIFE_EXTREME, align 4
  store i32 %74, i32* %4, align 4
  br label %112

75:                                               ; preds = %69
  br label %76

76:                                               ; preds = %75
  br label %77

77:                                               ; preds = %76
  br label %108

78:                                               ; preds = %53
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @NODE, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %100

82:                                               ; preds = %78
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @WARM, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @HOT, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %86, %82
  %91 = load i32, i32* @WRITE_LIFE_NOT_SET, align 4
  store i32 %91, i32* %4, align 4
  br label %112

92:                                               ; preds = %86
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @COLD, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = load i32, i32* @WRITE_LIFE_NONE, align 4
  store i32 %97, i32* %4, align 4
  br label %112

98:                                               ; preds = %92
  br label %99

99:                                               ; preds = %98
  br label %107

100:                                              ; preds = %78
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @META, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = load i32, i32* @WRITE_LIFE_MEDIUM, align 4
  store i32 %105, i32* %4, align 4
  br label %112

106:                                              ; preds = %100
  br label %107

107:                                              ; preds = %106, %99
  br label %108

108:                                              ; preds = %107, %77
  br label %109

109:                                              ; preds = %108, %45
  br label %110

110:                                              ; preds = %109, %44
  %111 = load i32, i32* @WRITE_LIFE_NOT_SET, align 4
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %110, %104, %96, %90, %73, %67, %61, %42, %37, %31, %25
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i64 @F2FS_OPTION(%struct.f2fs_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
