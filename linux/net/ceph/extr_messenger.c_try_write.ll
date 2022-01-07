; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_try_write.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_try_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_connection = type { i32, i32, i32, i8*, i64, i64, i32, i32*, i64, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"try_write start %p state %lu\0A\00", align 1
@CON_STATE_PREOPEN = common dso_local global i64 0, align 8
@CON_STATE_CONNECTING = common dso_local global i64 0, align 8
@CON_STATE_NEGOTIATING = common dso_local global i64 0, align 8
@CON_STATE_OPEN = common dso_local global i64 0, align 8
@CEPH_MSGR_TAG_READY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"try_write initiating connect on %p new state %lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"connect error\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"try_write out_kvec_bytes %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"try_write write_partial_message_data err %d\0A\00", align 1
@CON_FLAG_KEEPALIVE_PENDING = common dso_local global i32 0, align 4
@CON_FLAG_WRITE_PENDING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"try_write nothing else to write.\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"try_write done on %p ret %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_connection*)* @try_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_write(%struct.ceph_connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ceph_connection*, align 8
  %4 = alloca i32, align 4
  store %struct.ceph_connection* %0, %struct.ceph_connection** %3, align 8
  store i32 1, i32* %4, align 4
  %5 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %6 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %7 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.ceph_connection* %5, i32 %8)
  %10 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %11 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = load i64, i64* @CON_STATE_PREOPEN, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %38

16:                                               ; preds = %1
  %17 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %18 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* @CON_STATE_CONNECTING, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %16
  %24 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %25 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* @CON_STATE_NEGOTIATING, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %23
  %31 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %32 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* @CON_STATE_OPEN, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %196

38:                                               ; preds = %30, %23, %16, %1
  %39 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %40 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* @CON_STATE_PREOPEN, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %80

45:                                               ; preds = %38
  %46 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %47 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @BUG_ON(i32 %48)
  %50 = load i64, i64* @CON_STATE_CONNECTING, align 8
  %51 = trunc i64 %50 to i32
  %52 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %53 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %55 = call i32 @con_out_kvec_reset(%struct.ceph_connection* %54)
  %56 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %57 = call i32 @prepare_write_banner(%struct.ceph_connection* %56)
  %58 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %59 = call i32 @prepare_read_banner(%struct.ceph_connection* %58)
  %60 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %61 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @BUG_ON(i32 %62)
  %64 = load i32, i32* @CEPH_MSGR_TAG_READY, align 4
  %65 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %66 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %65, i32 0, i32 12
  store i32 %64, i32* %66, align 4
  %67 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %68 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %69 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), %struct.ceph_connection* %67, i32 %70)
  %72 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %73 = call i32 @ceph_tcp_connect(%struct.ceph_connection* %72)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %45
  %77 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %78 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %77, i32 0, i32 3
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** %78, align 8
  br label %191

79:                                               ; preds = %45
  br label %80

80:                                               ; preds = %79, %38
  br label %81

81:                                               ; preds = %182, %171, %163, %138, %80
  %82 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %83 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %82, i32 0, i32 11
  %84 = load i32, i32* %83, align 8
  %85 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %84)
  %86 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %87 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  %90 = xor i1 %89, true
  %91 = zext i1 %90 to i32
  %92 = call i32 @BUG_ON(i32 %91)
  %93 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %94 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %93, i32 0, i32 10
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %81
  %98 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %99 = call i32 @write_partial_kvec(%struct.ceph_connection* %98)
  store i32 %99, i32* %4, align 4
  %100 = load i32, i32* %4, align 4
  %101 = icmp sle i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  br label %191

103:                                              ; preds = %97
  br label %104

104:                                              ; preds = %103, %81
  %105 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %106 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %105, i32 0, i32 9
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %104
  %110 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %111 = call i32 @write_partial_skip(%struct.ceph_connection* %110)
  store i32 %111, i32* %4, align 4
  %112 = load i32, i32* %4, align 4
  %113 = icmp sle i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  br label %191

115:                                              ; preds = %109
  br label %116

116:                                              ; preds = %115, %104
  %117 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %118 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %117, i32 0, i32 7
  %119 = load i32*, i32** %118, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %150

121:                                              ; preds = %116
  %122 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %123 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %122, i32 0, i32 8
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %121
  %127 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %128 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %127, i32 0, i32 7
  %129 = load i32*, i32** %128, align 8
  %130 = call i32 @ceph_msg_put(i32* %129)
  %131 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %132 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %131, i32 0, i32 7
  store i32* null, i32** %132, align 8
  br label %151

133:                                              ; preds = %121
  %134 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %135 = call i32 @write_partial_message_data(%struct.ceph_connection* %134)
  store i32 %135, i32* %4, align 4
  %136 = load i32, i32* %4, align 4
  %137 = icmp eq i32 %136, 1
  br i1 %137, label %138, label %139

138:                                              ; preds = %133
  br label %81

139:                                              ; preds = %133
  %140 = load i32, i32* %4, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %139
  br label %191

143:                                              ; preds = %139
  %144 = load i32, i32* %4, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load i32, i32* %4, align 4
  %148 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %147)
  br label %191

149:                                              ; preds = %143
  br label %150

150:                                              ; preds = %149, %116
  br label %151

151:                                              ; preds = %150, %126
  %152 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %153 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = sext i32 %154 to i64
  %156 = load i64, i64* @CON_STATE_OPEN, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %186

158:                                              ; preds = %151
  %159 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %160 = load i32, i32* @CON_FLAG_KEEPALIVE_PENDING, align 4
  %161 = call i64 @con_flag_test_and_clear(%struct.ceph_connection* %159, i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %158
  %164 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %165 = call i32 @prepare_write_keepalive(%struct.ceph_connection* %164)
  br label %81

166:                                              ; preds = %158
  %167 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %168 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %167, i32 0, i32 6
  %169 = call i32 @list_empty(i32* %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %166
  %172 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %173 = call i32 @prepare_write_message(%struct.ceph_connection* %172)
  br label %81

174:                                              ; preds = %166
  %175 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %176 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %175, i32 0, i32 4
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %179 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %178, i32 0, i32 5
  %180 = load i64, i64* %179, align 8
  %181 = icmp sgt i64 %177, %180
  br i1 %181, label %182, label %185

182:                                              ; preds = %174
  %183 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %184 = call i32 @prepare_write_ack(%struct.ceph_connection* %183)
  br label %81

185:                                              ; preds = %174
  br label %186

186:                                              ; preds = %185, %151
  %187 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %188 = load i32, i32* @CON_FLAG_WRITE_PENDING, align 4
  %189 = call i32 @con_flag_clear(%struct.ceph_connection* %187, i32 %188)
  %190 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %191

191:                                              ; preds = %186, %146, %142, %114, %102, %76
  %192 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %193 = load i32, i32* %4, align 4
  %194 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), %struct.ceph_connection* %192, i32 %193)
  %195 = load i32, i32* %4, align 4
  store i32 %195, i32* %2, align 4
  br label %196

196:                                              ; preds = %191, %37
  %197 = load i32, i32* %2, align 4
  ret i32 %197
}

declare dso_local i32 @dout(i8*, ...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @con_out_kvec_reset(%struct.ceph_connection*) #1

declare dso_local i32 @prepare_write_banner(%struct.ceph_connection*) #1

declare dso_local i32 @prepare_read_banner(%struct.ceph_connection*) #1

declare dso_local i32 @ceph_tcp_connect(%struct.ceph_connection*) #1

declare dso_local i32 @write_partial_kvec(%struct.ceph_connection*) #1

declare dso_local i32 @write_partial_skip(%struct.ceph_connection*) #1

declare dso_local i32 @ceph_msg_put(i32*) #1

declare dso_local i32 @write_partial_message_data(%struct.ceph_connection*) #1

declare dso_local i64 @con_flag_test_and_clear(%struct.ceph_connection*, i32) #1

declare dso_local i32 @prepare_write_keepalive(%struct.ceph_connection*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @prepare_write_message(%struct.ceph_connection*) #1

declare dso_local i32 @prepare_write_ack(%struct.ceph_connection*) #1

declare dso_local i32 @con_flag_clear(%struct.ceph_connection*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
