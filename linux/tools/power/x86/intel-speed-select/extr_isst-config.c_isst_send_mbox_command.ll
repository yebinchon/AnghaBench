; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-config.c_isst_send_mbox_command.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-config.c_isst_send_mbox_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.isst_if_mbox_cmds = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i8, i8, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"/dev/isst_interface\00", align 1
@.str.1 = private unnamed_addr constant [70 x i8] c"mbox_send: cpu:%d command:%x sub_command:%x parameter:%x req_data:%x\0A\00", align 1
@isst_platform_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@CONFIG_CLOS = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"CPU %d\0A\00", align 1
@MBOX_CMD_WRITE_BIT = common dso_local global i32 0, align 4
@PQR_ASSOC_OFFSET = common dso_local global i32 0, align 4
@PM_CLOS_OFFSET = common dso_local global i32 0, align 4
@PM_QOS_CONFIG_OFFSET = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"%s open failed\00", align 1
@ISST_IF_MBOX_COMMAND = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"ISST_IF_MBOX_COMMAND\00", align 1
@outf = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [75 x i8] c"Error: mbox_cmd cpu:%d command:%x sub_command:%x parameter:%x req_data:%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [86 x i8] c"mbox_cmd response: cpu:%d command:%x sub_command:%x parameter:%x req_data:%x resp:%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isst_send_mbox_command(i32 %0, i8 zeroext %1, i8 zeroext %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.isst_if_mbox_cmds, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i8 %1, i8* %9, align 1
  store i8 %2, i8* %10, align 1
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  %22 = bitcast %struct.isst_if_mbox_cmds* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %22, i8 0, i64 24, i1 false)
  %23 = load i32, i32* %8, align 4
  %24 = load i8, i8* %9, align 1
  %25 = zext i8 %24 to i32
  %26 = load i8, i8* %10, align 1
  %27 = zext i8 %26 to i32
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %12, align 4
  %30 = call i32 (i8*, i32, ...) @debug_printf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 %25, i32 %27, i32 %28, i32 %29)
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @isst_platform_info, i32 0, i32 0), align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %108

33:                                               ; preds = %6
  %34 = load i8, i8* %9, align 1
  %35 = zext i8 %34 to i32
  %36 = load i8, i8* @CONFIG_CLOS, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %108

39:                                               ; preds = %33
  store i32 0, i32* %18, align 4
  store i32 0, i32* %21, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 (i8*, i32, ...) @debug_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @MBOX_CMD_WRITE_BIT, align 4
  %44 = call i32 @BIT(i32 %43)
  %45 = and i32 %42, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %17, align 4
  store i32 1, i32* %18, align 4
  br label %49

49:                                               ; preds = %47, %39
  %50 = load i8, i8* %10, align 1
  %51 = zext i8 %50 to i32
  switch i32 %51, label %105 [
    i32 129, label %52
    i32 131, label %71
    i32 130, label %90
    i32 128, label %104
  ]

52:                                               ; preds = %49
  %53 = load i32, i32* %11, align 4
  %54 = and i32 %53, 255
  store i32 %54, i32* %20, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @PQR_ASSOC_OFFSET, align 4
  %57 = load i32, i32* %20, align 4
  %58 = mul nsw i32 %57, 4
  %59 = add nsw i32 %56, %58
  %60 = load i32, i32* %18, align 4
  %61 = call i32 @isst_send_mmio_command(i32 %55, i32 %59, i32 %60, i32* %17)
  store i32 %61, i32* %21, align 4
  %62 = load i32, i32* %21, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %52
  %65 = load i32, i32* %18, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %17, align 4
  %69 = load i32*, i32** %13, align 8
  store i32 %68, i32* %69, align 4
  br label %70

70:                                               ; preds = %67, %64, %52
  br label %106

71:                                               ; preds = %49
  %72 = load i32, i32* %11, align 4
  %73 = and i32 %72, 3
  store i32 %73, i32* %19, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @PM_CLOS_OFFSET, align 4
  %76 = load i32, i32* %19, align 4
  %77 = mul nsw i32 %76, 4
  %78 = add nsw i32 %75, %77
  %79 = load i32, i32* %18, align 4
  %80 = call i32 @isst_send_mmio_command(i32 %74, i32 %78, i32 %79, i32* %17)
  store i32 %80, i32* %21, align 4
  %81 = load i32, i32* %21, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %71
  %84 = load i32, i32* %18, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* %17, align 4
  %88 = load i32*, i32** %13, align 8
  store i32 %87, i32* %88, align 4
  br label %89

89:                                               ; preds = %86, %83, %71
  br label %106

90:                                               ; preds = %49
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @PM_QOS_CONFIG_OFFSET, align 4
  %93 = load i32, i32* %18, align 4
  %94 = call i32 @isst_send_mmio_command(i32 %91, i32 %92, i32 %93, i32* %17)
  store i32 %94, i32* %21, align 4
  %95 = load i32, i32* %21, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %103, label %97

97:                                               ; preds = %90
  %98 = load i32, i32* %18, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %17, align 4
  %102 = load i32*, i32** %13, align 8
  store i32 %101, i32* %102, align 4
  br label %103

103:                                              ; preds = %100, %97, %90
  br label %106

104:                                              ; preds = %49
  br label %106

105:                                              ; preds = %49
  br label %106

106:                                              ; preds = %105, %104, %103, %89, %70
  %107 = load i32, i32* %21, align 4
  store i32 %107, i32* %7, align 4
  br label %177

108:                                              ; preds = %33, %6
  %109 = getelementptr inbounds %struct.isst_if_mbox_cmds, %struct.isst_if_mbox_cmds* %16, i32 0, i32 0
  store i32 1, i32* %109, align 8
  %110 = load i32, i32* %8, align 4
  %111 = getelementptr inbounds %struct.isst_if_mbox_cmds, %struct.isst_if_mbox_cmds* %16, i32 0, i32 1
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i64 0
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  store i32 %110, i32* %114, align 4
  %115 = load i8, i8* %9, align 1
  %116 = getelementptr inbounds %struct.isst_if_mbox_cmds, %struct.isst_if_mbox_cmds* %16, i32 0, i32 1
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i64 0
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 1
  store i8 %115, i8* %119, align 4
  %120 = load i8, i8* %10, align 1
  %121 = getelementptr inbounds %struct.isst_if_mbox_cmds, %struct.isst_if_mbox_cmds* %16, i32 0, i32 1
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i64 0
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 2
  store i8 %120, i8* %124, align 1
  %125 = load i32, i32* %11, align 4
  %126 = getelementptr inbounds %struct.isst_if_mbox_cmds, %struct.isst_if_mbox_cmds* %16, i32 0, i32 1
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i64 0
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 3
  store i32 %125, i32* %129, align 4
  %130 = load i32, i32* %12, align 4
  %131 = getelementptr inbounds %struct.isst_if_mbox_cmds, %struct.isst_if_mbox_cmds* %16, i32 0, i32 1
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i64 0
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 4
  store i32 %130, i32* %134, align 4
  %135 = load i8*, i8** %14, align 8
  %136 = load i32, i32* @O_RDWR, align 4
  %137 = call i32 @open(i8* %135, i32 %136)
  store i32 %137, i32* %15, align 4
  %138 = load i32, i32* %15, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %108
  %141 = load i8*, i8** %14, align 8
  %142 = call i32 @err(i32 -1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %141)
  br label %143

143:                                              ; preds = %140, %108
  %144 = load i32, i32* %15, align 4
  %145 = load i32, i32* @ISST_IF_MBOX_COMMAND, align 4
  %146 = call i32 @ioctl(i32 %144, i32 %145, %struct.isst_if_mbox_cmds* %16)
  %147 = icmp eq i32 %146, -1
  br i1 %147, label %148, label %157

148:                                              ; preds = %143
  %149 = call i32 @perror(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %150 = load i32, i32* @outf, align 4
  %151 = load i32, i32* %8, align 4
  %152 = load i8, i8* %9, align 1
  %153 = load i8, i8* %10, align 1
  %154 = load i32, i32* %11, align 4
  %155 = load i32, i32* %12, align 4
  %156 = call i32 @fprintf(i32 %150, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.5, i64 0, i64 0), i32 %151, i8 zeroext %152, i8 zeroext %153, i32 %154, i32 %155)
  br label %174

157:                                              ; preds = %143
  %158 = getelementptr inbounds %struct.isst_if_mbox_cmds, %struct.isst_if_mbox_cmds* %16, i32 0, i32 1
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i64 0
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 4
  %163 = load i32*, i32** %13, align 8
  store i32 %162, i32* %163, align 4
  %164 = load i32, i32* %8, align 4
  %165 = load i8, i8* %9, align 1
  %166 = zext i8 %165 to i32
  %167 = load i8, i8* %10, align 1
  %168 = zext i8 %167 to i32
  %169 = load i32, i32* %11, align 4
  %170 = load i32, i32* %12, align 4
  %171 = load i32*, i32** %13, align 8
  %172 = load i32, i32* %171, align 4
  %173 = call i32 (i8*, i32, ...) @debug_printf(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.6, i64 0, i64 0), i32 %164, i32 %166, i32 %168, i32 %169, i32 %170, i32 %172)
  br label %174

174:                                              ; preds = %157, %148
  %175 = load i32, i32* %15, align 4
  %176 = call i32 @close(i32 %175)
  store i32 0, i32* %7, align 4
  br label %177

177:                                              ; preds = %174, %106
  %178 = load i32, i32* %7, align 4
  ret i32 %178
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @debug_printf(i8*, i32, ...) #2

declare dso_local i32 @BIT(i32) #2

declare dso_local i32 @isst_send_mmio_command(i32, i32, i32, i32*) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @err(i32, i8*, i8*) #2

declare dso_local i32 @ioctl(i32, i32, %struct.isst_if_mbox_cmds*) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i32 @fprintf(i32, i8*, i32, i8 zeroext, i8 zeroext, i32, i32) #2

declare dso_local i32 @close(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
