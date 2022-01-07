
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_3__ {unsigned int range_min; unsigned int range_max; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* rt5677_ranges ;

__attribute__((used)) static bool rt5677_readable_register(struct device *dev, unsigned int reg)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(rt5677_ranges); i++) {
  if (reg >= rt5677_ranges[i].range_min &&
   reg <= rt5677_ranges[i].range_max) {
   return 1;
  }
 }

 switch (reg) {
 case 170:
 case 200:
 case 206:
 case 198:
 case 167:
 case 166:
 case 168:
 case 169:
 case 325:
 case 207:
 case 295:
 case 296:
 case 298:
 case 297:
 case 208:
 case 163:
 case 197:
 case 164:
 case 158:
 case 330:
 case 154:
 case 153:
 case 149:
 case 146:
 case 150:
 case 155:
 case 160:
 case 194:
 case 326:
 case 159:
 case 193:
 case 294:
 case 293:
 case 210:
 case 209:
 case 184:
 case 186:
 case 185:
 case 192:
 case 191:
 case 190:
 case 189:
 case 188:
 case 187:
 case 145:
 case 144:
 case 143:
 case 142:
 case 141:
 case 140:
 case 139:
 case 138:
 case 137:
 case 136:
 case 222:
 case 221:
 case 220:
 case 219:
 case 218:
 case 217:
 case 216:
 case 215:
 case 291:
 case 290:
 case 232:
 case 230:
 case 229:
 case 228:
 case 227:
 case 226:
 case 225:
 case 224:
 case 223:
 case 231:
 case 175:
 case 174:
 case 177:
 case 176:
 case 173:
 case 171:
 case 172:
 case 329:
 case 178:
 case 179:
 case 211:
 case 214:
 case 213:
 case 212:
 case 301:
 case 300:
 case 299:
 case 183:
 case 182:
 case 181:
 case 180:
 case 238:
 case 237:
 case 324:
 case 313:
 case 308:
 case 307:
 case 306:
 case 305:
 case 304:
 case 303:
 case 302:
 case 323:
 case 322:
 case 321:
 case 320:
 case 319:
 case 318:
 case 317:
 case 316:
 case 315:
 case 314:
 case 312:
 case 311:
 case 310:
 case 309:
 case 135:
 case 134:
 case 133:
 case 132:
 case 131:
 case 261:
 case 260:
 case 259:
 case 258:
 case 253:
 case 248:
 case 247:
 case 328:
 case 327:
 case 243:
 case 242:
 case 241:
 case 165:
 case 203:
 case 202:
 case 201:
 case 205:
 case 204:
 case 233:
 case 236:
 case 235:
 case 234:
 case 162:
 case 161:
 case 196:
 case 195:
 case 157:
 case 156:
 case 152:
 case 151:
 case 148:
 case 147:
 case 199:
 case 289:
 case 288:
 case 287:
 case 286:
 case 285:
 case 284:
 case 281:
 case 280:
 case 279:
 case 278:
 case 277:
 case 276:
 case 283:
 case 282:
 case 275:
 case 274:
 case 273:
 case 272:
 case 271:
 case 270:
 case 269:
 case 268:
 case 267:
 case 266:
 case 265:
 case 264:
 case 263:
 case 262:
 case 257:
 case 256:
 case 255:
 case 254:
 case 252:
 case 251:
 case 250:
 case 249:
 case 246:
 case 245:
 case 244:
 case 292:
 case 240:
 case 239:
 case 130:
 case 129:
 case 128:
  return 1;
 default:
  return 0;
 }
}
