; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_oxygen_lib.c_oxygen_proc_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_oxygen_lib.c_oxygen_proc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { %struct.oxygen* }
%struct.oxygen = type { %struct.TYPE_2__, i32, i64, i64 }
%struct.TYPE_2__ = type { i32 (%struct.oxygen*, %struct.snd_info_buffer*)* }
%struct.snd_info_buffer = type { i32 }

@OXYGEN_REVISION = common dso_local global i32 0, align 4
@OXYGEN_PACKAGE_ID_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"CMI878%c:\0A\00", align 1
@OXYGEN_IO_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%02x:\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"\0AAC97:\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c" %04x\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"\0AAC97 2:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* @oxygen_proc_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oxygen_proc_read(%struct.snd_info_entry* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.snd_info_entry*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.oxygen*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_info_entry* %0, %struct.snd_info_entry** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %8 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %9 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %8, i32 0, i32 0
  %10 = load %struct.oxygen*, %struct.oxygen** %9, align 8
  store %struct.oxygen* %10, %struct.oxygen** %5, align 8
  %11 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %12 = load i32, i32* @OXYGEN_REVISION, align 4
  %13 = call i32 @oxygen_read8(%struct.oxygen* %11, i32 %12)
  %14 = load i32, i32* @OXYGEN_PACKAGE_ID_MASK, align 4
  %15 = and i32 %13, %14
  switch i32 %15, label %19 [
    i32 130, label %16
    i32 129, label %17
    i32 128, label %18
  ]

16:                                               ; preds = %2
  store i32 54, i32* %6, align 4
  br label %20

17:                                               ; preds = %2
  store i32 55, i32* %6, align 4
  br label %20

18:                                               ; preds = %2
  store i32 56, i32* %6, align 4
  br label %20

19:                                               ; preds = %2
  store i32 63, i32* %6, align 4
  br label %20

20:                                               ; preds = %19, %18, %17, %16
  %21 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %22)
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %49, %20
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @OXYGEN_IO_SIZE, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %52

28:                                               ; preds = %24
  %29 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %43, %28
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 16
  br i1 %34, label %35, label %46

35:                                               ; preds = %32
  %36 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %37 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %38, %39
  %41 = call i32 @oxygen_read8(%struct.oxygen* %37, i32 %40)
  %42 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %35
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %32

46:                                               ; preds = %32
  %47 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %48 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 16
  store i32 %51, i32* %6, align 4
  br label %24

52:                                               ; preds = %24
  %53 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %54 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %53, i32 0, i32 1
  %55 = call i64 @mutex_lock_interruptible(i32* %54)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %147

58:                                               ; preds = %52
  %59 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %60 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %94

63:                                               ; preds = %58
  %64 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %65 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %90, %63
  %67 = load i32, i32* %6, align 4
  %68 = icmp slt i32 %67, 128
  br i1 %68, label %69, label %93

69:                                               ; preds = %66
  %70 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  store i32 0, i32* %7, align 4
  br label %73

73:                                               ; preds = %84, %69
  %74 = load i32, i32* %7, align 4
  %75 = icmp slt i32 %74, 16
  br i1 %75, label %76, label %87

76:                                               ; preds = %73
  %77 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %78 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %79, %80
  %82 = call i32 @oxygen_read_ac97(%struct.oxygen* %78, i32 0, i32 %81)
  %83 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %76
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 2
  store i32 %86, i32* %7, align 4
  br label %73

87:                                               ; preds = %73
  %88 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %89 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %88, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %90

90:                                               ; preds = %87
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %91, 16
  store i32 %92, i32* %6, align 4
  br label %66

93:                                               ; preds = %66
  br label %94

94:                                               ; preds = %93, %58
  %95 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %96 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %130

99:                                               ; preds = %94
  %100 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %101 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %102

102:                                              ; preds = %126, %99
  %103 = load i32, i32* %6, align 4
  %104 = icmp slt i32 %103, 128
  br i1 %104, label %105, label %129

105:                                              ; preds = %102
  %106 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %107 = load i32, i32* %6, align 4
  %108 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %106, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %107)
  store i32 0, i32* %7, align 4
  br label %109

109:                                              ; preds = %120, %105
  %110 = load i32, i32* %7, align 4
  %111 = icmp slt i32 %110, 16
  br i1 %111, label %112, label %123

112:                                              ; preds = %109
  %113 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %114 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* %7, align 4
  %117 = add nsw i32 %115, %116
  %118 = call i32 @oxygen_read_ac97(%struct.oxygen* %114, i32 1, i32 %117)
  %119 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %113, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %118)
  br label %120

120:                                              ; preds = %112
  %121 = load i32, i32* %7, align 4
  %122 = add nsw i32 %121, 2
  store i32 %122, i32* %7, align 4
  br label %109

123:                                              ; preds = %109
  %124 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %125 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %124, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %126

126:                                              ; preds = %123
  %127 = load i32, i32* %6, align 4
  %128 = add nsw i32 %127, 16
  store i32 %128, i32* %6, align 4
  br label %102

129:                                              ; preds = %102
  br label %130

130:                                              ; preds = %129, %94
  %131 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %132 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %131, i32 0, i32 1
  %133 = call i32 @mutex_unlock(i32* %132)
  %134 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %135 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = load i32 (%struct.oxygen*, %struct.snd_info_buffer*)*, i32 (%struct.oxygen*, %struct.snd_info_buffer*)** %136, align 8
  %138 = icmp ne i32 (%struct.oxygen*, %struct.snd_info_buffer*)* %137, null
  br i1 %138, label %139, label %147

139:                                              ; preds = %130
  %140 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %141 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = load i32 (%struct.oxygen*, %struct.snd_info_buffer*)*, i32 (%struct.oxygen*, %struct.snd_info_buffer*)** %142, align 8
  %144 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %145 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %146 = call i32 %143(%struct.oxygen* %144, %struct.snd_info_buffer* %145)
  br label %147

147:                                              ; preds = %57, %139, %130
  ret void
}

declare dso_local i32 @oxygen_read8(%struct.oxygen*, i32) #1

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, ...) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @oxygen_read_ac97(%struct.oxygen*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
