; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_tty.c_rfcomm_tty_set_termios.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_tty.c_rfcomm_tty_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i64, %struct.ktermios }
%struct.ktermios = type { i32, i64* }
%struct.rfcomm_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"tty %p termios %p\00", align 1
@CRTSCTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Turning off CRTSCTS unsupported\00", align 1
@PARENB = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@RFCOMM_RPN_PM_PARITY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Parity change detected.\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Parity is ODD\00", align 1
@RFCOMM_RPN_PARITY_ODD = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"Parity is EVEN\00", align 1
@RFCOMM_RPN_PARITY_EVEN = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"Parity is OFF\00", align 1
@RFCOMM_RPN_PARITY_NONE = common dso_local global i64 0, align 8
@VSTOP = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [12 x i8] c"XOFF custom\00", align 1
@RFCOMM_RPN_PM_XON = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"XOFF default\00", align 1
@RFCOMM_RPN_XON_CHAR = common dso_local global i64 0, align 8
@VSTART = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [11 x i8] c"XON custom\00", align 1
@RFCOMM_RPN_PM_XOFF = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"XON default\00", align 1
@RFCOMM_RPN_XOFF_CHAR = common dso_local global i64 0, align 8
@CSTOPB = common dso_local global i32 0, align 4
@RFCOMM_RPN_PM_STOP = common dso_local global i32 0, align 4
@RFCOMM_RPN_STOP_15 = common dso_local global i64 0, align 8
@RFCOMM_RPN_STOP_1 = common dso_local global i64 0, align 8
@CSIZE = common dso_local global i32 0, align 4
@RFCOMM_RPN_PM_DATA = common dso_local global i32 0, align 4
@RFCOMM_RPN_DATA_5 = common dso_local global i64 0, align 8
@RFCOMM_RPN_DATA_6 = common dso_local global i64 0, align 8
@RFCOMM_RPN_DATA_7 = common dso_local global i64 0, align 8
@RFCOMM_RPN_DATA_8 = common dso_local global i64 0, align 8
@RFCOMM_RPN_PM_BITRATE = common dso_local global i32 0, align 4
@RFCOMM_RPN_BR_2400 = common dso_local global i64 0, align 8
@RFCOMM_RPN_BR_4800 = common dso_local global i64 0, align 8
@RFCOMM_RPN_BR_7200 = common dso_local global i64 0, align 8
@RFCOMM_RPN_BR_9600 = common dso_local global i64 0, align 8
@RFCOMM_RPN_BR_19200 = common dso_local global i64 0, align 8
@RFCOMM_RPN_BR_38400 = common dso_local global i64 0, align 8
@RFCOMM_RPN_BR_57600 = common dso_local global i64 0, align 8
@RFCOMM_RPN_BR_115200 = common dso_local global i64 0, align 8
@RFCOMM_RPN_BR_230400 = common dso_local global i64 0, align 8
@RFCOMM_RPN_FLOW_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.ktermios*)* @rfcomm_tty_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rfcomm_tty_set_termios(%struct.tty_struct* %0, %struct.ktermios* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.ktermios*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.rfcomm_dev*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.ktermios* %1, %struct.ktermios** %4, align 8
  %16 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %17 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %16, i32 0, i32 1
  store %struct.ktermios* %17, %struct.ktermios** %5, align 8
  %18 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %19 = call i32 @tty_termios_baud_rate(%struct.ktermios* %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %21 = call i32 @tty_termios_baud_rate(%struct.ktermios* %20)
  store i32 %21, i32* %7, align 4
  store i32 0, i32* %14, align 4
  %22 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %23 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.rfcomm_dev*
  store %struct.rfcomm_dev* %25, %struct.rfcomm_dev** %15, align 8
  %26 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %27 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %28 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.tty_struct* %26, %struct.ktermios* %27)
  %29 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %15, align 8
  %30 = icmp ne %struct.rfcomm_dev* %29, null
  br i1 %30, label %31, label %43

31:                                               ; preds = %2
  %32 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %15, align 8
  %33 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = icmp ne %struct.TYPE_2__* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %15, align 8
  %38 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %36, %31, %2
  br label %281

44:                                               ; preds = %36
  %45 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %46 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @CRTSCTS, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %44
  %52 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %53 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @CRTSCTS, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %51
  %59 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %51, %44
  %61 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %62 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @PARENB, align 4
  %65 = and i32 %63, %64
  %66 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %67 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @PARENB, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %65, %70
  br i1 %71, label %84, label %72

72:                                               ; preds = %60
  %73 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %74 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @PARODD, align 4
  %77 = and i32 %75, %76
  %78 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %79 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @PARODD, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %77, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %72, %60
  %85 = load i32, i32* @RFCOMM_RPN_PM_PARITY, align 4
  %86 = load i32, i32* %14, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %14, align 4
  %88 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %89

89:                                               ; preds = %84, %72
  %90 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %91 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @PARENB, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %110

96:                                               ; preds = %89
  %97 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %98 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @PARODD, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %96
  %104 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %105 = load i64, i64* @RFCOMM_RPN_PARITY_ODD, align 8
  store i64 %105, i64* %11, align 8
  br label %109

106:                                              ; preds = %96
  %107 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %108 = load i64, i64* @RFCOMM_RPN_PARITY_EVEN, align 8
  store i64 %108, i64* %11, align 8
  br label %109

109:                                              ; preds = %106, %103
  br label %113

110:                                              ; preds = %89
  %111 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %112 = load i64, i64* @RFCOMM_RPN_PARITY_NONE, align 8
  store i64 %112, i64* %11, align 8
  br label %113

113:                                              ; preds = %110, %109
  %114 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %115 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %114, i32 0, i32 1
  %116 = load i64*, i64** %115, align 8
  %117 = load i64, i64* @VSTOP, align 8
  %118 = getelementptr inbounds i64, i64* %116, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %121 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %120, i32 0, i32 1
  %122 = load i64*, i64** %121, align 8
  %123 = load i64, i64* @VSTOP, align 8
  %124 = getelementptr inbounds i64, i64* %122, i64 %123
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %119, %125
  br i1 %126, label %127, label %138

127:                                              ; preds = %113
  %128 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %129 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %130 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %129, i32 0, i32 1
  %131 = load i64*, i64** %130, align 8
  %132 = load i64, i64* @VSTOP, align 8
  %133 = getelementptr inbounds i64, i64* %131, i64 %132
  %134 = load i64, i64* %133, align 8
  store i64 %134, i64* %12, align 8
  %135 = load i32, i32* @RFCOMM_RPN_PM_XON, align 4
  %136 = load i32, i32* %14, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %14, align 4
  br label %141

138:                                              ; preds = %113
  %139 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %140 = load i64, i64* @RFCOMM_RPN_XON_CHAR, align 8
  store i64 %140, i64* %12, align 8
  br label %141

141:                                              ; preds = %138, %127
  %142 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %143 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %142, i32 0, i32 1
  %144 = load i64*, i64** %143, align 8
  %145 = load i64, i64* @VSTART, align 8
  %146 = getelementptr inbounds i64, i64* %144, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %149 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %148, i32 0, i32 1
  %150 = load i64*, i64** %149, align 8
  %151 = load i64, i64* @VSTART, align 8
  %152 = getelementptr inbounds i64, i64* %150, i64 %151
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %147, %153
  br i1 %154, label %155, label %166

155:                                              ; preds = %141
  %156 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %157 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %158 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %157, i32 0, i32 1
  %159 = load i64*, i64** %158, align 8
  %160 = load i64, i64* @VSTART, align 8
  %161 = getelementptr inbounds i64, i64* %159, i64 %160
  %162 = load i64, i64* %161, align 8
  store i64 %162, i64* %13, align 8
  %163 = load i32, i32* @RFCOMM_RPN_PM_XOFF, align 4
  %164 = load i32, i32* %14, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %14, align 4
  br label %169

166:                                              ; preds = %141
  %167 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %168 = load i64, i64* @RFCOMM_RPN_XOFF_CHAR, align 8
  store i64 %168, i64* %13, align 8
  br label %169

169:                                              ; preds = %166, %155
  %170 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %171 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @CSTOPB, align 4
  %174 = and i32 %172, %173
  %175 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %176 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @CSTOPB, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %174, %179
  br i1 %180, label %181, label %185

181:                                              ; preds = %169
  %182 = load i32, i32* @RFCOMM_RPN_PM_STOP, align 4
  %183 = load i32, i32* %14, align 4
  %184 = or i32 %183, %182
  store i32 %184, i32* %14, align 4
  br label %185

185:                                              ; preds = %181, %169
  %186 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %187 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @CSTOPB, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %185
  %193 = load i64, i64* @RFCOMM_RPN_STOP_15, align 8
  store i64 %193, i64* %10, align 8
  br label %196

194:                                              ; preds = %185
  %195 = load i64, i64* @RFCOMM_RPN_STOP_1, align 8
  store i64 %195, i64* %10, align 8
  br label %196

196:                                              ; preds = %194, %192
  %197 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %198 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* @CSIZE, align 4
  %201 = and i32 %199, %200
  %202 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %203 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @CSIZE, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %201, %206
  br i1 %207, label %208, label %212

208:                                              ; preds = %196
  %209 = load i32, i32* @RFCOMM_RPN_PM_DATA, align 4
  %210 = load i32, i32* %14, align 4
  %211 = or i32 %210, %209
  store i32 %211, i32* %14, align 4
  br label %212

212:                                              ; preds = %208, %196
  %213 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %214 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @CSIZE, align 4
  %217 = and i32 %215, %216
  switch i32 %217, label %226 [
    i32 131, label %218
    i32 130, label %220
    i32 129, label %222
    i32 128, label %224
  ]

218:                                              ; preds = %212
  %219 = load i64, i64* @RFCOMM_RPN_DATA_5, align 8
  store i64 %219, i64* %9, align 8
  br label %228

220:                                              ; preds = %212
  %221 = load i64, i64* @RFCOMM_RPN_DATA_6, align 8
  store i64 %221, i64* %9, align 8
  br label %228

222:                                              ; preds = %212
  %223 = load i64, i64* @RFCOMM_RPN_DATA_7, align 8
  store i64 %223, i64* %9, align 8
  br label %228

224:                                              ; preds = %212
  %225 = load i64, i64* @RFCOMM_RPN_DATA_8, align 8
  store i64 %225, i64* %9, align 8
  br label %228

226:                                              ; preds = %212
  %227 = load i64, i64* @RFCOMM_RPN_DATA_8, align 8
  store i64 %227, i64* %9, align 8
  br label %228

228:                                              ; preds = %226, %224, %222, %220, %218
  %229 = load i32, i32* %6, align 4
  %230 = load i32, i32* %7, align 4
  %231 = icmp ne i32 %229, %230
  br i1 %231, label %232, label %236

232:                                              ; preds = %228
  %233 = load i32, i32* @RFCOMM_RPN_PM_BITRATE, align 4
  %234 = load i32, i32* %14, align 4
  %235 = or i32 %234, %233
  store i32 %235, i32* %14, align 4
  br label %236

236:                                              ; preds = %232, %228
  %237 = load i32, i32* %7, align 4
  switch i32 %237, label %256 [
    i32 2400, label %238
    i32 4800, label %240
    i32 7200, label %242
    i32 9600, label %244
    i32 19200, label %246
    i32 38400, label %248
    i32 57600, label %250
    i32 115200, label %252
    i32 230400, label %254
  ]

238:                                              ; preds = %236
  %239 = load i64, i64* @RFCOMM_RPN_BR_2400, align 8
  store i64 %239, i64* %8, align 8
  br label %258

240:                                              ; preds = %236
  %241 = load i64, i64* @RFCOMM_RPN_BR_4800, align 8
  store i64 %241, i64* %8, align 8
  br label %258

242:                                              ; preds = %236
  %243 = load i64, i64* @RFCOMM_RPN_BR_7200, align 8
  store i64 %243, i64* %8, align 8
  br label %258

244:                                              ; preds = %236
  %245 = load i64, i64* @RFCOMM_RPN_BR_9600, align 8
  store i64 %245, i64* %8, align 8
  br label %258

246:                                              ; preds = %236
  %247 = load i64, i64* @RFCOMM_RPN_BR_19200, align 8
  store i64 %247, i64* %8, align 8
  br label %258

248:                                              ; preds = %236
  %249 = load i64, i64* @RFCOMM_RPN_BR_38400, align 8
  store i64 %249, i64* %8, align 8
  br label %258

250:                                              ; preds = %236
  %251 = load i64, i64* @RFCOMM_RPN_BR_57600, align 8
  store i64 %251, i64* %8, align 8
  br label %258

252:                                              ; preds = %236
  %253 = load i64, i64* @RFCOMM_RPN_BR_115200, align 8
  store i64 %253, i64* %8, align 8
  br label %258

254:                                              ; preds = %236
  %255 = load i64, i64* @RFCOMM_RPN_BR_230400, align 8
  store i64 %255, i64* %8, align 8
  br label %258

256:                                              ; preds = %236
  %257 = load i64, i64* @RFCOMM_RPN_BR_9600, align 8
  store i64 %257, i64* %8, align 8
  br label %258

258:                                              ; preds = %256, %254, %252, %250, %248, %246, %244, %242, %240, %238
  %259 = load i32, i32* %14, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %281

261:                                              ; preds = %258
  %262 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %15, align 8
  %263 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %262, i32 0, i32 0
  %264 = load %struct.TYPE_2__*, %struct.TYPE_2__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %15, align 8
  %268 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %267, i32 0, i32 0
  %269 = load %struct.TYPE_2__*, %struct.TYPE_2__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = load i64, i64* %8, align 8
  %273 = load i64, i64* %9, align 8
  %274 = load i64, i64* %10, align 8
  %275 = load i64, i64* %11, align 8
  %276 = load i32, i32* @RFCOMM_RPN_FLOW_NONE, align 4
  %277 = load i64, i64* %12, align 8
  %278 = load i64, i64* %13, align 8
  %279 = load i32, i32* %14, align 4
  %280 = call i32 @rfcomm_send_rpn(i32 %266, i32 1, i32 %271, i64 %272, i64 %273, i64 %274, i64 %275, i32 %276, i64 %277, i64 %278, i32 %279)
  br label %281

281:                                              ; preds = %43, %261, %258
  ret void
}

declare dso_local i32 @tty_termios_baud_rate(%struct.ktermios*) #1

declare dso_local i32 @BT_DBG(i8*, ...) #1

declare dso_local i32 @rfcomm_send_rpn(i32, i32, i32, i64, i64, i64, i64, i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
