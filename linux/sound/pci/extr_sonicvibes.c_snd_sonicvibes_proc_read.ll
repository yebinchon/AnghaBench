; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_sonicvibes.c_snd_sonicvibes_proc_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_sonicvibes.c_snd_sonicvibes_proc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { %struct.sonicvibes* }
%struct.sonicvibes = type { i32, i32, i32, i8 }
%struct.snd_info_buffer = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"SRS 3D           : %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"SRS Space        : %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"100%\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"75%\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"50%\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"25%\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"0%\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"SRS Center       : %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"WaveTable Source : %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"on-board ROM\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"PCI bus\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"on-board ROM + PCI bus\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"Onboard synth    : %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"Ext. Rx to synth : %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"MIDI to ext. Tx  : %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* @snd_sonicvibes_proc_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_sonicvibes_proc_read(%struct.snd_info_entry* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.snd_info_entry*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.sonicvibes*, align 8
  %6 = alloca i8, align 1
  store %struct.snd_info_entry* %0, %struct.snd_info_entry** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %7 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %8 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %7, i32 0, i32 0
  %9 = load %struct.sonicvibes*, %struct.sonicvibes** %8, align 8
  store %struct.sonicvibes* %9, %struct.sonicvibes** %5, align 8
  %10 = load %struct.sonicvibes*, %struct.sonicvibes** %5, align 8
  %11 = getelementptr inbounds %struct.sonicvibes, %struct.sonicvibes* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, 15
  %14 = trunc i32 %13 to i8
  store i8 %14, i8* %6, align 1
  %15 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %16 = load %struct.sonicvibes*, %struct.sonicvibes** %5, align 8
  %17 = getelementptr inbounds %struct.sonicvibes, %struct.sonicvibes* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 128
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %23 = call i32 @snd_iprintf(%struct.snd_info_buffer* %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %25 = load i8, i8* %6, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  br label %49

29:                                               ; preds = %2
  %30 = load i8, i8* %6, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %47

34:                                               ; preds = %29
  %35 = load i8, i8* %6, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %45

39:                                               ; preds = %34
  %40 = load i8, i8* %6, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp eq i32 %41, 3
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0)
  br label %45

45:                                               ; preds = %39, %38
  %46 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), %38 ], [ %44, %39 ]
  br label %47

47:                                               ; preds = %45, %33
  %48 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), %33 ], [ %46, %45 ]
  br label %49

49:                                               ; preds = %47, %28
  %50 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), %28 ], [ %48, %47 ]
  %51 = call i32 @snd_iprintf(%struct.snd_info_buffer* %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %50)
  %52 = load %struct.sonicvibes*, %struct.sonicvibes** %5, align 8
  %53 = getelementptr inbounds %struct.sonicvibes, %struct.sonicvibes* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 15
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %6, align 1
  %57 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %58 = load i8, i8* %6, align 1
  %59 = zext i8 %58 to i32
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %49
  br label %82

62:                                               ; preds = %49
  %63 = load i8, i8* %6, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  br label %80

67:                                               ; preds = %62
  %68 = load i8, i8* %6, align 1
  %69 = zext i8 %68 to i32
  %70 = icmp eq i32 %69, 2
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  br label %78

72:                                               ; preds = %67
  %73 = load i8, i8* %6, align 1
  %74 = zext i8 %73 to i32
  %75 = icmp eq i32 %74, 3
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0)
  br label %78

78:                                               ; preds = %72, %71
  %79 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), %71 ], [ %77, %72 ]
  br label %80

80:                                               ; preds = %78, %66
  %81 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), %66 ], [ %79, %78 ]
  br label %82

82:                                               ; preds = %80, %61
  %83 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), %61 ], [ %81, %80 ]
  %84 = call i32 @snd_iprintf(%struct.snd_info_buffer* %57, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i8* %83)
  %85 = load %struct.sonicvibes*, %struct.sonicvibes** %5, align 8
  %86 = getelementptr inbounds %struct.sonicvibes, %struct.sonicvibes* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, 3
  %89 = trunc i32 %88 to i8
  store i8 %89, i8* %6, align 1
  %90 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %91 = load i8, i8* %6, align 1
  %92 = zext i8 %91 to i32
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %82
  br label %101

95:                                               ; preds = %82
  %96 = load i8, i8* %6, align 1
  %97 = zext i8 %96 to i32
  %98 = icmp eq i32 %97, 1
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0)
  br label %101

101:                                              ; preds = %95, %94
  %102 = phi i8* [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), %94 ], [ %100, %95 ]
  %103 = call i32 @snd_iprintf(%struct.snd_info_buffer* %90, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i8* %102)
  %104 = load %struct.sonicvibes*, %struct.sonicvibes** %5, align 8
  %105 = getelementptr inbounds %struct.sonicvibes, %struct.sonicvibes* %104, i32 0, i32 3
  %106 = load i8, i8* %105, align 4
  store i8 %106, i8* %6, align 1
  %107 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %108 = load i8, i8* %6, align 1
  %109 = zext i8 %108 to i32
  %110 = and i32 %109, 1
  %111 = icmp ne i32 %110, 0
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)
  %114 = call i32 @snd_iprintf(%struct.snd_info_buffer* %107, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i8* %113)
  %115 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %116 = load i8, i8* %6, align 1
  %117 = zext i8 %116 to i32
  %118 = and i32 %117, 2
  %119 = icmp ne i32 %118, 0
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)
  %122 = call i32 @snd_iprintf(%struct.snd_info_buffer* %115, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i8* %121)
  %123 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %124 = load i8, i8* %6, align 1
  %125 = zext i8 %124 to i32
  %126 = and i32 %125, 4
  %127 = icmp ne i32 %126, 0
  %128 = zext i1 %127 to i64
  %129 = select i1 %127, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)
  %130 = call i32 @snd_iprintf(%struct.snd_info_buffer* %123, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i8* %129)
  ret void
}

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
