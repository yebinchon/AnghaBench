; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_open.c_build_open_flags.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_open.c_build_open_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.open_flags = type { i32, i32, i32, i32, i32 }

@VALID_OPEN_FLAGS = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@__O_TMPFILE = common dso_local global i32 0, align 4
@S_IALLUGO = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@FMODE_NONOTIFY = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@__O_SYNC = common dso_local global i32 0, align 4
@O_DSYNC = common dso_local global i32 0, align 4
@O_TMPFILE_MASK = common dso_local global i32 0, align 4
@O_TMPFILE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MAY_WRITE = common dso_local global i32 0, align 4
@O_PATH = common dso_local global i32 0, align 4
@O_DIRECTORY = common dso_local global i32 0, align 4
@O_NOFOLLOW = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@MAY_APPEND = common dso_local global i32 0, align 4
@LOOKUP_OPEN = common dso_local global i32 0, align 4
@LOOKUP_CREATE = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@LOOKUP_EXCL = common dso_local global i32 0, align 4
@LOOKUP_DIRECTORY = common dso_local global i32 0, align 4
@LOOKUP_FOLLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.open_flags*)* @build_open_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_open_flags(i32 %0, i32 %1, %struct.open_flags* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.open_flags*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.open_flags* %2, %struct.open_flags** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @ACC_MODE(i32 %10)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* @VALID_OPEN_FLAGS, align 4
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @O_CREAT, align 4
  %17 = load i32, i32* @__O_TMPFILE, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %15, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @S_IALLUGO, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @S_IFREG, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.open_flags*, %struct.open_flags** %7, align 8
  %28 = getelementptr inbounds %struct.open_flags, %struct.open_flags* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %32

29:                                               ; preds = %3
  %30 = load %struct.open_flags*, %struct.open_flags** %7, align 8
  %31 = getelementptr inbounds %struct.open_flags, %struct.open_flags* %30, i32 0, i32 0
  store i32 0, i32* %31, align 4
  br label %32

32:                                               ; preds = %29, %21
  %33 = load i32, i32* @FMODE_NONOTIFY, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* @O_CLOEXEC, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  %38 = load i32, i32* %5, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @__O_SYNC, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %32
  %45 = load i32, i32* @O_DSYNC, align 4
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %44, %32
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @__O_TMPFILE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %71

53:                                               ; preds = %48
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @O_TMPFILE_MASK, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* @O_TMPFILE, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %164

62:                                               ; preds = %53
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @MAY_WRITE, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %164

70:                                               ; preds = %62
  br label %85

71:                                               ; preds = %48
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @O_PATH, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %71
  %77 = load i32, i32* @O_DIRECTORY, align 4
  %78 = load i32, i32* @O_NOFOLLOW, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @O_PATH, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* %5, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %5, align 4
  store i32 0, i32* %9, align 4
  br label %84

84:                                               ; preds = %76, %71
  br label %85

85:                                               ; preds = %84, %70
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.open_flags*, %struct.open_flags** %7, align 8
  %88 = getelementptr inbounds %struct.open_flags, %struct.open_flags* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @O_TRUNC, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %85
  %94 = load i32, i32* @MAY_WRITE, align 4
  %95 = load i32, i32* %9, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %9, align 4
  br label %97

97:                                               ; preds = %93, %85
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* @O_APPEND, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load i32, i32* @MAY_APPEND, align 4
  %104 = load i32, i32* %9, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %9, align 4
  br label %106

106:                                              ; preds = %102, %97
  %107 = load i32, i32* %9, align 4
  %108 = load %struct.open_flags*, %struct.open_flags** %7, align 8
  %109 = getelementptr inbounds %struct.open_flags, %struct.open_flags* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* @O_PATH, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %106
  br label %117

115:                                              ; preds = %106
  %116 = load i32, i32* @LOOKUP_OPEN, align 4
  br label %117

117:                                              ; preds = %115, %114
  %118 = phi i32 [ 0, %114 ], [ %116, %115 ]
  %119 = load %struct.open_flags*, %struct.open_flags** %7, align 8
  %120 = getelementptr inbounds %struct.open_flags, %struct.open_flags* %119, i32 0, i32 4
  store i32 %118, i32* %120, align 4
  %121 = load i32, i32* %5, align 4
  %122 = load i32, i32* @O_CREAT, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %142

125:                                              ; preds = %117
  %126 = load i32, i32* @LOOKUP_CREATE, align 4
  %127 = load %struct.open_flags*, %struct.open_flags** %7, align 8
  %128 = getelementptr inbounds %struct.open_flags, %struct.open_flags* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 4
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 4
  %131 = load i32, i32* %5, align 4
  %132 = load i32, i32* @O_EXCL, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %125
  %136 = load i32, i32* @LOOKUP_EXCL, align 4
  %137 = load %struct.open_flags*, %struct.open_flags** %7, align 8
  %138 = getelementptr inbounds %struct.open_flags, %struct.open_flags* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %139, %136
  store i32 %140, i32* %138, align 4
  br label %141

141:                                              ; preds = %135, %125
  br label %142

142:                                              ; preds = %141, %117
  %143 = load i32, i32* %5, align 4
  %144 = load i32, i32* @O_DIRECTORY, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %142
  %148 = load i32, i32* @LOOKUP_DIRECTORY, align 4
  %149 = load i32, i32* %8, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %8, align 4
  br label %151

151:                                              ; preds = %147, %142
  %152 = load i32, i32* %5, align 4
  %153 = load i32, i32* @O_NOFOLLOW, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %160, label %156

156:                                              ; preds = %151
  %157 = load i32, i32* @LOOKUP_FOLLOW, align 4
  %158 = load i32, i32* %8, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %8, align 4
  br label %160

160:                                              ; preds = %156, %151
  %161 = load i32, i32* %8, align 4
  %162 = load %struct.open_flags*, %struct.open_flags** %7, align 8
  %163 = getelementptr inbounds %struct.open_flags, %struct.open_flags* %162, i32 0, i32 3
  store i32 %161, i32* %163, align 4
  store i32 0, i32* %4, align 4
  br label %164

164:                                              ; preds = %160, %67, %59
  %165 = load i32, i32* %4, align 4
  ret i32 %165
}

declare dso_local i32 @ACC_MODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
