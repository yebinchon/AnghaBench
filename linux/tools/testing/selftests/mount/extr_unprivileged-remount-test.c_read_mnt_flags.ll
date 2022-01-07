; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/mount/extr_unprivileged-remount-test.c_read_mnt_flags.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/mount/extr_unprivileged-remount-test.c_read_mnt_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statvfs = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"statvfs of %s failed: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@ST_RDONLY = common dso_local global i32 0, align 4
@ST_NOSUID = common dso_local global i32 0, align 4
@ST_NODEV = common dso_local global i32 0, align 4
@ST_NOEXEC = common dso_local global i32 0, align 4
@ST_NOATIME = common dso_local global i32 0, align 4
@ST_NODIRATIME = common dso_local global i32 0, align 4
@ST_RELATIME = common dso_local global i32 0, align 4
@ST_SYNCHRONOUS = common dso_local global i32 0, align 4
@ST_MANDLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Unrecognized mount flags\0A\00", align 1
@MS_RDONLY = common dso_local global i32 0, align 4
@MS_NOSUID = common dso_local global i32 0, align 4
@MS_NODEV = common dso_local global i32 0, align 4
@MS_NOEXEC = common dso_local global i32 0, align 4
@MS_NOATIME = common dso_local global i32 0, align 4
@MS_NODIRATIME = common dso_local global i32 0, align 4
@MS_RELATIME = common dso_local global i32 0, align 4
@MS_SYNCHRONOUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @read_mnt_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_mnt_flags(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.statvfs, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i32 @statvfs(i8* %6, %struct.statvfs* %4)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load i8*, i8** %2, align 8
  %12 = load i32, i32* @errno, align 4
  %13 = call i32 @strerror(i32 %12)
  %14 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %11, i32 %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %4, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @ST_RDONLY, align 4
  %19 = load i32, i32* @ST_NOSUID, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @ST_NODEV, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @ST_NOEXEC, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @ST_NOATIME, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @ST_NODIRATIME, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @ST_RELATIME, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @ST_SYNCHRONOUS, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @ST_MANDLOCK, align 4
  %34 = or i32 %32, %33
  %35 = xor i32 %34, -1
  %36 = and i32 %17, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %15
  %39 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %15
  store i32 0, i32* %5, align 4
  %41 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %4, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @ST_RDONLY, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load i32, i32* @MS_RDONLY, align 4
  %48 = load i32, i32* %5, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %46, %40
  %51 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %4, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @ST_NOSUID, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load i32, i32* @MS_NOSUID, align 4
  %58 = load i32, i32* %5, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %56, %50
  %61 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %4, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @ST_NODEV, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load i32, i32* @MS_NODEV, align 4
  %68 = load i32, i32* %5, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %66, %60
  %71 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %4, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @ST_NOEXEC, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load i32, i32* @MS_NOEXEC, align 4
  %78 = load i32, i32* %5, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %76, %70
  %81 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %4, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @ST_NOATIME, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load i32, i32* @MS_NOATIME, align 4
  %88 = load i32, i32* %5, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %86, %80
  %91 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %4, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @ST_NODIRATIME, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = load i32, i32* @MS_NODIRATIME, align 4
  %98 = load i32, i32* %5, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %96, %90
  %101 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %4, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @ST_RELATIME, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %100
  %107 = load i32, i32* @MS_RELATIME, align 4
  %108 = load i32, i32* %5, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %106, %100
  %111 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %4, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @ST_SYNCHRONOUS, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %110
  %117 = load i32, i32* @MS_SYNCHRONOUS, align 4
  %118 = load i32, i32* %5, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %5, align 4
  br label %120

120:                                              ; preds = %116, %110
  %121 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %4, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @ST_MANDLOCK, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %120
  %127 = load i32, i32* @ST_MANDLOCK, align 4
  %128 = load i32, i32* %5, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %5, align 4
  br label %130

130:                                              ; preds = %126, %120
  %131 = load i32, i32* %5, align 4
  ret i32 %131
}

declare dso_local i32 @statvfs(i8*, %struct.statvfs*) #1

declare dso_local i32 @die(i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
