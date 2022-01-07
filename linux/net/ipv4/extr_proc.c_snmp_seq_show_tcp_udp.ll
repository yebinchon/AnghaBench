; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_proc.c_snmp_seq_show_tcp_udp.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_proc.c_snmp_seq_show_tcp_udp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }
%struct.seq_file = type { %struct.net* }
%struct.net = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }

@TCPUDP_MIB_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"\0ATcp:\00", align 1
@snmp4_tcp_list = common dso_local global %struct.TYPE_6__* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@TCP_MIB_MAXCONN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c" %ld\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" %lu\00", align 1
@snmp4_udp_list = common dso_local global %struct.TYPE_6__* null, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"\0AUdp:\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"\0AUdpLite:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @snmp_seq_show_tcp_udp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snmp_seq_show_tcp_udp(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i32, i32* @TCPUDP_MIB_MAX, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i64, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %14 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %13, i32 0, i32 0
  %15 = load %struct.net*, %struct.net** %14, align 8
  store %struct.net* %15, %struct.net** %7, align 8
  %16 = load i32, i32* @TCPUDP_MIB_MAX, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 8
  %19 = trunc i64 %18 to i32
  %20 = call i32 @memset(i64* %12, i32 0, i32 %19)
  %21 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %22 = call i32 @seq_puts(%struct.seq_file* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %40, %2
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @snmp4_tcp_list, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %23
  %32 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** @snmp4_tcp_list, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @seq_printf(%struct.seq_file* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 %38)
  br label %40

40:                                               ; preds = %31
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  br label %23

43:                                               ; preds = %23
  %44 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %45 = call i32 @seq_puts(%struct.seq_file* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** @snmp4_tcp_list, align 8
  %47 = load %struct.net*, %struct.net** %7, align 8
  %48 = getelementptr inbounds %struct.net, %struct.net* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @snmp_get_cpu_field_batch(i64* %12, %struct.TYPE_6__* %46, i32 %50)
  store i32 0, i32* %8, align 4
  br label %52

52:                                               ; preds = %84, %43
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** @snmp4_tcp_list, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %87

60:                                               ; preds = %52
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** @snmp4_tcp_list, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @TCP_MIB_MAXCONN, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %60
  %70 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %12, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @seq_printf(%struct.seq_file* %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 %74)
  br label %83

76:                                               ; preds = %60
  %77 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %12, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @seq_printf(%struct.seq_file* %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64 %81)
  br label %83

83:                                               ; preds = %76, %69
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %8, align 4
  br label %52

87:                                               ; preds = %52
  %88 = load i32, i32* @TCPUDP_MIB_MAX, align 4
  %89 = sext i32 %88 to i64
  %90 = mul i64 %89, 8
  %91 = trunc i64 %90 to i32
  %92 = call i32 @memset(i64* %12, i32 0, i32 %91)
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** @snmp4_udp_list, align 8
  %94 = load %struct.net*, %struct.net** %7, align 8
  %95 = getelementptr inbounds %struct.net, %struct.net* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @snmp_get_cpu_field_batch(i64* %12, %struct.TYPE_6__* %93, i32 %97)
  %99 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %100 = call i32 @seq_puts(%struct.seq_file* %99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %101

101:                                              ; preds = %118, %87
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** @snmp4_udp_list, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %121

109:                                              ; preds = %101
  %110 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** @snmp4_udp_list, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @seq_printf(%struct.seq_file* %110, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 %116)
  br label %118

118:                                              ; preds = %109
  %119 = load i32, i32* %8, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %8, align 4
  br label %101

121:                                              ; preds = %101
  %122 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %123 = call i32 @seq_puts(%struct.seq_file* %122, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %124

124:                                              ; preds = %139, %121
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** @snmp4_udp_list, align 8
  %126 = load i32, i32* %8, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %142

132:                                              ; preds = %124
  %133 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %134 = load i32, i32* %8, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i64, i64* %12, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @seq_printf(%struct.seq_file* %133, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64 %137)
  br label %139

139:                                              ; preds = %132
  %140 = load i32, i32* %8, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %8, align 4
  br label %124

142:                                              ; preds = %124
  %143 = load i32, i32* @TCPUDP_MIB_MAX, align 4
  %144 = sext i32 %143 to i64
  %145 = mul i64 %144, 8
  %146 = trunc i64 %145 to i32
  %147 = call i32 @memset(i64* %12, i32 0, i32 %146)
  %148 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %149 = call i32 @seq_puts(%struct.seq_file* %148, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** @snmp4_udp_list, align 8
  %151 = load %struct.net*, %struct.net** %7, align 8
  %152 = getelementptr inbounds %struct.net, %struct.net* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @snmp_get_cpu_field_batch(i64* %12, %struct.TYPE_6__* %150, i32 %154)
  store i32 0, i32* %8, align 4
  br label %156

156:                                              ; preds = %173, %142
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** @snmp4_udp_list, align 8
  %158 = load i32, i32* %8, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %176

164:                                              ; preds = %156
  %165 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** @snmp4_udp_list, align 8
  %167 = load i32, i32* %8, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = call i32 @seq_printf(%struct.seq_file* %165, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 %171)
  br label %173

173:                                              ; preds = %164
  %174 = load i32, i32* %8, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %8, align 4
  br label %156

176:                                              ; preds = %156
  %177 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %178 = call i32 @seq_puts(%struct.seq_file* %177, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %179

179:                                              ; preds = %194, %176
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** @snmp4_udp_list, align 8
  %181 = load i32, i32* %8, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %197

187:                                              ; preds = %179
  %188 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %189 = load i32, i32* %8, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i64, i64* %12, i64 %190
  %192 = load i64, i64* %191, align 8
  %193 = call i32 @seq_printf(%struct.seq_file* %188, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64 %192)
  br label %194

194:                                              ; preds = %187
  %195 = load i32, i32* %8, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %8, align 4
  br label %179

197:                                              ; preds = %179
  %198 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %199 = call i32 @seq_putc(%struct.seq_file* %198, i8 signext 10)
  %200 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %200)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i64*, i32, i32) #2

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #2

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64) #2

declare dso_local i32 @snmp_get_cpu_field_batch(i64*, %struct.TYPE_6__*, i32) #2

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
