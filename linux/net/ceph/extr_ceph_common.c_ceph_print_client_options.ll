; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_ceph_common.c_ceph_print_client_options.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_ceph_common.c_ceph_print_client_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i64 }
%struct.ceph_client = type { %struct.ceph_options* }
%struct.ceph_options = type { i32, i64, i64, i64, i64, i32, i64, i64 }

@.str = private unnamed_addr constant [6 x i8] c"name=\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c", \09\0A\\\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"secret=<hidden>,\00", align 1
@CEPH_OPT_FSID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"fsid=%pU,\00", align 1
@CEPH_OPT_NOSHARE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"noshare,\00", align 1
@CEPH_OPT_NOCRC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"nocrc,\00", align 1
@CEPH_OPT_NOMSGAUTH = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"nocephx_require_signatures,\00", align 1
@CEPH_OPT_NOMSGSIGN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"nocephx_sign_messages,\00", align 1
@CEPH_OPT_TCP_NODELAY = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"notcp_nodelay,\00", align 1
@CEPH_OPT_ABORT_ON_FULL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [15 x i8] c"abort_on_full,\00", align 1
@CEPH_MOUNT_TIMEOUT_DEFAULT = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [18 x i8] c"mount_timeout=%d,\00", align 1
@CEPH_OSD_IDLE_TTL_DEFAULT = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [17 x i8] c"osd_idle_ttl=%d,\00", align 1
@CEPH_OSD_KEEPALIVE_DEFAULT = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [24 x i8] c"osdkeepalivetimeout=%d,\00", align 1
@CEPH_OSD_REQUEST_TIMEOUT_DEFAULT = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [24 x i8] c"osd_request_timeout=%d,\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_print_client_options(%struct.seq_file* %0, %struct.ceph_client* %1, i32 %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.ceph_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ceph_options*, align 8
  %8 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store %struct.ceph_client* %1, %struct.ceph_client** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ceph_client*, %struct.ceph_client** %5, align 8
  %10 = getelementptr inbounds %struct.ceph_client, %struct.ceph_client* %9, i32 0, i32 0
  %11 = load %struct.ceph_options*, %struct.ceph_options** %10, align 8
  store %struct.ceph_options* %11, %struct.ceph_options** %7, align 8
  %12 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %13 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %8, align 8
  %15 = load %struct.ceph_options*, %struct.ceph_options** %7, align 8
  %16 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %15, i32 0, i32 7
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %3
  %20 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %21 = call i32 @seq_puts(%struct.seq_file* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %23 = load %struct.ceph_options*, %struct.ceph_options** %7, align 8
  %24 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %23, i32 0, i32 7
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @seq_escape(%struct.seq_file* %22, i64 %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %28 = call i32 @seq_putc(%struct.seq_file* %27, i8 signext 44)
  br label %29

29:                                               ; preds = %19, %3
  %30 = load %struct.ceph_options*, %struct.ceph_options** %7, align 8
  %31 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %30, i32 0, i32 6
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %36 = call i32 @seq_puts(%struct.seq_file* %35, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %29
  %38 = load %struct.ceph_options*, %struct.ceph_options** %7, align 8
  %39 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @CEPH_OPT_FSID, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %37
  %45 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %46 = load %struct.ceph_options*, %struct.ceph_options** %7, align 8
  %47 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %46, i32 0, i32 5
  %48 = ptrtoint i32* %47 to i32
  %49 = call i32 @seq_printf(%struct.seq_file* %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %44, %37
  %51 = load %struct.ceph_options*, %struct.ceph_options** %7, align 8
  %52 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @CEPH_OPT_NOSHARE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %59 = call i32 @seq_puts(%struct.seq_file* %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %50
  %61 = load %struct.ceph_options*, %struct.ceph_options** %7, align 8
  %62 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @CEPH_OPT_NOCRC, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %69 = call i32 @seq_puts(%struct.seq_file* %68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %70

70:                                               ; preds = %67, %60
  %71 = load %struct.ceph_options*, %struct.ceph_options** %7, align 8
  %72 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @CEPH_OPT_NOMSGAUTH, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %79 = call i32 @seq_puts(%struct.seq_file* %78, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  br label %80

80:                                               ; preds = %77, %70
  %81 = load %struct.ceph_options*, %struct.ceph_options** %7, align 8
  %82 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @CEPH_OPT_NOMSGSIGN, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %89 = call i32 @seq_puts(%struct.seq_file* %88, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  br label %90

90:                                               ; preds = %87, %80
  %91 = load %struct.ceph_options*, %struct.ceph_options** %7, align 8
  %92 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @CEPH_OPT_TCP_NODELAY, align 4
  %95 = and i32 %93, %94
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %90
  %98 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %99 = call i32 @seq_puts(%struct.seq_file* %98, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  br label %100

100:                                              ; preds = %97, %90
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %100
  %104 = load %struct.ceph_options*, %struct.ceph_options** %7, align 8
  %105 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @CEPH_OPT_ABORT_ON_FULL, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %103
  %111 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %112 = call i32 @seq_puts(%struct.seq_file* %111, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  br label %113

113:                                              ; preds = %110, %103, %100
  %114 = load %struct.ceph_options*, %struct.ceph_options** %7, align 8
  %115 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @CEPH_MOUNT_TIMEOUT_DEFAULT, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %127

119:                                              ; preds = %113
  %120 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %121 = load %struct.ceph_options*, %struct.ceph_options** %7, align 8
  %122 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @jiffies_to_msecs(i64 %123)
  %125 = sdiv i32 %124, 1000
  %126 = call i32 @seq_printf(%struct.seq_file* %120, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 %125)
  br label %127

127:                                              ; preds = %119, %113
  %128 = load %struct.ceph_options*, %struct.ceph_options** %7, align 8
  %129 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @CEPH_OSD_IDLE_TTL_DEFAULT, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %133, label %141

133:                                              ; preds = %127
  %134 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %135 = load %struct.ceph_options*, %struct.ceph_options** %7, align 8
  %136 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @jiffies_to_msecs(i64 %137)
  %139 = sdiv i32 %138, 1000
  %140 = call i32 @seq_printf(%struct.seq_file* %134, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 %139)
  br label %141

141:                                              ; preds = %133, %127
  %142 = load %struct.ceph_options*, %struct.ceph_options** %7, align 8
  %143 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @CEPH_OSD_KEEPALIVE_DEFAULT, align 8
  %146 = icmp ne i64 %144, %145
  br i1 %146, label %147, label %155

147:                                              ; preds = %141
  %148 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %149 = load %struct.ceph_options*, %struct.ceph_options** %7, align 8
  %150 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %149, i32 0, i32 3
  %151 = load i64, i64* %150, align 8
  %152 = call i32 @jiffies_to_msecs(i64 %151)
  %153 = sdiv i32 %152, 1000
  %154 = call i32 @seq_printf(%struct.seq_file* %148, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i32 %153)
  br label %155

155:                                              ; preds = %147, %141
  %156 = load %struct.ceph_options*, %struct.ceph_options** %7, align 8
  %157 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %156, i32 0, i32 4
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @CEPH_OSD_REQUEST_TIMEOUT_DEFAULT, align 8
  %160 = icmp ne i64 %158, %159
  br i1 %160, label %161, label %169

161:                                              ; preds = %155
  %162 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %163 = load %struct.ceph_options*, %struct.ceph_options** %7, align 8
  %164 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %163, i32 0, i32 4
  %165 = load i64, i64* %164, align 8
  %166 = call i32 @jiffies_to_msecs(i64 %165)
  %167 = sdiv i32 %166, 1000
  %168 = call i32 @seq_printf(%struct.seq_file* %162, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i32 %167)
  br label %169

169:                                              ; preds = %161, %155
  %170 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %171 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* %8, align 8
  %174 = icmp ne i64 %172, %173
  br i1 %174, label %175, label %180

175:                                              ; preds = %169
  %176 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %177 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = add i64 %178, -1
  store i64 %179, i64* %177, align 8
  br label %180

180:                                              ; preds = %175, %169
  ret i32 0
}

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_escape(%struct.seq_file*, i64, i8*) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
