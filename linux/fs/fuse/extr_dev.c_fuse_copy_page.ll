; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_dev.c_fuse_copy_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_dev.c_fuse_copy_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_copy_state = type { i64, i64, i32, i64 }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fuse_copy_state*, %struct.page**, i32, i32, i32)* @fuse_copy_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_copy_page(%struct.fuse_copy_state* %0, %struct.page** %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.fuse_copy_state*, align 8
  %8 = alloca %struct.page**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.page*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct.fuse_copy_state* %0, %struct.fuse_copy_state** %7, align 8
  store %struct.page** %1, %struct.page*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.page**, %struct.page*** %8, align 8
  %17 = load %struct.page*, %struct.page** %16, align 8
  store %struct.page* %17, %struct.page** %13, align 8
  %18 = load %struct.page*, %struct.page** %13, align 8
  %19 = icmp ne %struct.page* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %5
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @PAGE_SIZE, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load %struct.page*, %struct.page** %13, align 8
  %29 = call i32 @clear_highpage(%struct.page* %28)
  br label %30

30:                                               ; preds = %27, %23, %20, %5
  br label %31

31:                                               ; preds = %113, %30
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %114

34:                                               ; preds = %31
  %35 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %7, align 8
  %36 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %34
  %40 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %7, align 8
  %41 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  %45 = load %struct.page*, %struct.page** %13, align 8
  %46 = icmp ne %struct.page* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %7, align 8
  %49 = load %struct.page*, %struct.page** %13, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @fuse_ref_page(%struct.fuse_copy_state* %48, %struct.page* %49, i32 %50, i32 %51)
  store i32 %52, i32* %6, align 4
  br label %126

53:                                               ; preds = %44, %39, %34
  %54 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %7, align 8
  %55 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %91, label %58

58:                                               ; preds = %53
  %59 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %7, align 8
  %60 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %82

63:                                               ; preds = %58
  %64 = load %struct.page*, %struct.page** %13, align 8
  %65 = icmp ne %struct.page* %64, null
  br i1 %65, label %66, label %82

66:                                               ; preds = %63
  %67 = load i32, i32* %9, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %66
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @PAGE_SIZE, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %69
  %74 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %7, align 8
  %75 = load %struct.page**, %struct.page*** %8, align 8
  %76 = call i32 @fuse_try_move_page(%struct.fuse_copy_state* %74, %struct.page** %75)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp sle i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i32, i32* %12, align 4
  store i32 %80, i32* %6, align 4
  br label %126

81:                                               ; preds = %73
  br label %90

82:                                               ; preds = %69, %66, %63, %58
  %83 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %7, align 8
  %84 = call i32 @fuse_copy_fill(%struct.fuse_copy_state* %83)
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %12, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = load i32, i32* %12, align 4
  store i32 %88, i32* %6, align 4
  br label %126

89:                                               ; preds = %82
  br label %90

90:                                               ; preds = %89, %81
  br label %91

91:                                               ; preds = %90, %53
  br label %92

92:                                               ; preds = %91
  %93 = load %struct.page*, %struct.page** %13, align 8
  %94 = icmp ne %struct.page* %93, null
  br i1 %94, label %95, label %108

95:                                               ; preds = %92
  %96 = load %struct.page*, %struct.page** %13, align 8
  %97 = call i8* @kmap_atomic(%struct.page* %96)
  store i8* %97, i8** %14, align 8
  %98 = load i8*, i8** %14, align 8
  %99 = load i32, i32* %9, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr i8, i8* %98, i64 %100
  store i8* %101, i8** %15, align 8
  %102 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %7, align 8
  %103 = call i32 @fuse_copy_do(%struct.fuse_copy_state* %102, i8** %15, i32* %10)
  %104 = load i32, i32* %9, align 4
  %105 = add i32 %104, %103
  store i32 %105, i32* %9, align 4
  %106 = load i8*, i8** %14, align 8
  %107 = call i32 @kunmap_atomic(i8* %106)
  br label %113

108:                                              ; preds = %92
  %109 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %7, align 8
  %110 = call i32 @fuse_copy_do(%struct.fuse_copy_state* %109, i8** null, i32* %10)
  %111 = load i32, i32* %9, align 4
  %112 = add i32 %111, %110
  store i32 %112, i32* %9, align 4
  br label %113

113:                                              ; preds = %108, %95
  br label %31

114:                                              ; preds = %31
  %115 = load %struct.page*, %struct.page** %13, align 8
  %116 = icmp ne %struct.page* %115, null
  br i1 %116, label %117, label %125

117:                                              ; preds = %114
  %118 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %7, align 8
  %119 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %117
  %123 = load %struct.page*, %struct.page** %13, align 8
  %124 = call i32 @flush_dcache_page(%struct.page* %123)
  br label %125

125:                                              ; preds = %122, %117, %114
  store i32 0, i32* %6, align 4
  br label %126

126:                                              ; preds = %125, %87, %79, %47
  %127 = load i32, i32* %6, align 4
  ret i32 %127
}

declare dso_local i32 @clear_highpage(%struct.page*) #1

declare dso_local i32 @fuse_ref_page(%struct.fuse_copy_state*, %struct.page*, i32, i32) #1

declare dso_local i32 @fuse_try_move_page(%struct.fuse_copy_state*, %struct.page**) #1

declare dso_local i32 @fuse_copy_fill(%struct.fuse_copy_state*) #1

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @fuse_copy_do(%struct.fuse_copy_state*, i8**, i32*) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
